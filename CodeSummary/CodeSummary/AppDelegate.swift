import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    let service = Service.shared

    let viewController = ViewController(service: service)
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = viewController
    window.makeKeyAndVisible()
    self.window = window
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {}
  func applicationDidEnterBackground(_ application: UIApplication) {}
  func applicationWillEnterForeground(_ application: UIApplication) {}
  func applicationDidBecomeActive(_ application: UIApplication) {}
  func applicationWillTerminate(_ application: UIApplication) {}
}

