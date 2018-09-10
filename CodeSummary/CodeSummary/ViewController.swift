import UIKit

class ViewController: UIViewController {

  let service: Service

  init(service: Service) {
    self.service = service
    super.init(nibName: nil, bundle: nil)
    view.backgroundColor = .red
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    if let users = try? JSONDecoder().decode([User].self, from: jsonData) {
      print(users)
    }

    Helper.shared.state = "rename"
    Helper.shared.logStructHelper()

    service.doStuff()
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)

    let secondVC = SecondVC(service: service)
    present(secondVC, animated: true, completion: nil)
  }
}

class SecondVC: UIViewController {
  let service: Service

  init(service: Service) {
    self.service = service
    super.init(nibName: nil, bundle: nil)
    view.backgroundColor = .green
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func doStuff() {
    service.doStuff()
  }
}

