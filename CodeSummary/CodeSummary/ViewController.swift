import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    if let users = try? JSONDecoder().decode([User].self, from: jsonData) {
      print(users)
    }

    Helper.shared.state = "rename"
    Helper.shared.logStructHelper()
  }
}

