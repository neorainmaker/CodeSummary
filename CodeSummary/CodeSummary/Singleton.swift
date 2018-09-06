class Helper {
  static let shared = Helper()
  private init() {}

  var state = "active"

  func logStructHelper() {
    print("Singleton Method")
  }
}
