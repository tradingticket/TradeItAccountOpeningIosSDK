import UIKit
import TradeItAccountOpeningSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        #error ("Provide your TradeIt API")
        TradeItAccountOpeningSDK.configure(
            apiKey: "YOUR TRADEIT API KEY",
            environment: .production
        )

        return true
    }
}

