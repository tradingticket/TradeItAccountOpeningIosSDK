# TradeItAccountOpeningIosSDK
Distribution repository for the pre-built `TradeItAccountOpeningSDK` binary along with all pre-built dependencies.

## Technical requirements
- iOS 10.0 or higher
- Swift 4 or higher
- Check [the podspec](https://github.com/tradingticket/SpecRepo/tree/master/TradeItAccountOpeningSDK) to verify dependency compatability in your applicaiton. _note, this SDK is only compatible with the [TradeItIosTicketSDK2](https://github.com/tradingticket/TradeItIosTicketSDK2/) v2.0.11+_
- Cocoapods

## Installation
Installing and linking the framework will provide the following header:
```Swift
import TradeItAccountOpeningSDK

```
```Objective-C
import <TradeItAccountOpeningSDK/TradeItAccountOpeningSDK-Swift.h>
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

## Configuration
1. In your application's `Info.plist`, add a `String` entry for the `Privacy - Camera Usage Description` key (if one does not already exist). Set the key value to `Brokers will require a picture of your ID in order to open a brokerage account.` or another user-friendly message that will be displayed to your user at the time the application requests camera access.
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
See the provided example applications for examples of integrating with CocoaPods with ObjC and Swift.
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
