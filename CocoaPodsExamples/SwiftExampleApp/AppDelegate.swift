import UIKit
import TradeItAccountOpeningSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        #error ("Provide your TradeIt API")
        TradeItAccountOpeningSDK.configure(
            apiKey: "exampleapp-test-api-key",
            environment: .production
        )
        return true
    }
}
