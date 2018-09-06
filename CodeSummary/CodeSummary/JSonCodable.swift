import UIKit

let jsonData = """
[
{
"id": 1,
"name": "abc",
"petAge": 3,
"petId": 1,
"petName": "Snowball"
},
{
"id": 1,
"name": "abc",
"petAge": 3,
"petId": 1,
"petName": "Snowball"
},
{
"id": 1,
"name": "abc",
"petAge": 3,
"petId": 1,
"petName": "Snowball"
}
]
""".data(using: .utf8)!

struct User: Codable {
  let id: Int
  let name: String

  let pet: Pet

  private enum CodingKeys: String, CodingKey {
    case id, name, pet
  }

  struct Pet: Codable {
    let id: Int
    let name: String
    let age: Int

    private enum CodingKeys: String, CodingKey {
      case id = "petId"
      case name = "petName"
      case age = "petAge"
    }
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decode(Int.self, forKey: .id)
    name = try container.decode(String.self, forKey: .name)
    pet = try Pet(from: decoder)	
  }
}

