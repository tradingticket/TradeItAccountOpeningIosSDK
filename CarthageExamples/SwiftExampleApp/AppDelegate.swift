import UIKit
import TradeItAccountOpeningSDKCarthage

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        #error ("Provide your TradeIt API key and Google Maps API Key")
        TradeItAccountOpeningSDK.configure(
            apiKey: "YOUR TRADEIT API KEY",
            environment: .production,
            googleMapsApiKey: "YOUR GOOGLE MAPS API KEY"
        )
        
        return true
    }
}

