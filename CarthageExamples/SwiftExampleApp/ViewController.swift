import UIKit
import TradeItAccountOpeningSDKCarthage

class ViewController: UIViewController {

    @IBAction func launchSDKButtonClicked(_ sender: Any) {
        TradeItAccountOpeningSDK.launch(onViewController: self)
    }
}

