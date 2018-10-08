# TradeItAccountOpeningIosSDK
Distribution repository for the pre-built `TradeItAccountOpeningSDK` binary along with all pre-built dependnecies.

## Installation
Installing and linking the framework will provide the following header:
```Swift
import TradeItAccountOpeningSDK

```
```Objective-C
#import <TradeItAccountOpeningSDK/TradeItAccountOpeningSDK-Swift.h>`
```
### Cocoapods
Add the following to your `Podfile`
```
source 'https://github.com/tradingticket/SpecRepo'

target 'YourProjectTargetName' do
  use_frameworks!
  pod 'TradeItAccountOpeningSDK'
end
```

### Carthage
_For up to date installation instructions, see the [Carthage documentation](https://github.com/Carthage/Carthage)_
1. Add `github "tradingticket/TradeItAccountOpeningIosSDK"` to your `Cartfile` and integrate the provided frameworks [as you would normally](https://github.com/Carthage/Carthage).
1. Open your XCode project and select *General* from your appliaction target's configuration
1. In addition to adding the built frameworks to the *Linked Frameworks and Libraries*, as is done in typical Carthage proejcts, also drag and drop all created `.framework` files into the *Embedded Binaries* section (_this is required as this is a statically built framework_)
1. *For Obj-C apps:* Set `Target > Build Settings (All) > Always Embed Swift Standard Libraries` to `YES`

## Configuration
1. In your application's `Info.plist`, add a `String` entry for the `Privacy - Camera Usage Description` key (if one does not already exist). Set the key value to `Brokers will require a picture of your ID in order to open a brokerage account.` or another user friendly message that will be displayed to your user at the time the application requests camera access.
1. *For Obj-C apps:* Set `Project > Build Settings (All) > Swift Language Version` to >= `4.0`
1. *For Obj-C apps:* Set `Target > Build Settings (All) > Always Embed Swift Standard Libraries` to `YES`
1. Configure the SDK with your credentials:
```Swift
// When the app loads
TradeItAccountOpeningSDK.configure(
    apiKey: "YOUR TRADEIT API KEY",
    environment: .production,
    googleMapsApiKey: "YOUR GOOGLE MAPS API KEY"
)
```

```Objective-C
// When the app loads
[TradeItAccountOpeningSDK configureWithApiKey:@"YOUR TRADEIT API KEY"
                                      environment:TradeItAccountOpeningEnvironmentProduction
                                 googleMapsApiKey:@"YOUR GOOGLE MAPS API KEY"];
```

## Usage
See the provided example applications for examples of integrating with Carthage and CocoaPods with ObjC and Swift.
### Swift
```
// When the app loads
TradeItAccountOpeningSDK.configure(apiKey: "<your-trade-it-api-key>", environment: .prod)

// When the user wants to launch account opening
TradeItAccountOpeningSDK.launch(onViewController: self)
```

### ObjC

```
// When the user wants to launch account opening
TradeItAccountOpeningSDK.launch(onViewController: self)
```
