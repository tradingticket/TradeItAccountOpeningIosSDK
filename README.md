# TradeItAccountOpeningSDK
Distribution repository for the pre-built `TradeItAccountOpeningSDKCarthage` binary along with all pre-built dependnecies and example integrations.

## SDK installation
### Carthage
_For up to date installation instructions, see the [Carthage documentation](https://github.com/Carthage/Carthage)_
1. Add `github "tradingticket/TradeItAccountOpeningSDKCarthage"` to your `Cartfile` and integrate the installed frameworks [as you would normally](https://github.com/Carthage/Carthage).
1. As this is a statically built framework, you will also need to add all installed frameworks to `Your-Target > General > Embedded Binaries` section 
1. *For Obj-C apps:* Set `Target > Build Settings (All) > Always Embed Swift Standard Libraries` to `YES`

### CocoaPods
1. Add `pod 'TradeItAccountOpeningSDK'` to your `Podfile`
1. *For Obj-C apps:* Set `Project > Build Settings (All) > Swift Language Version` to >= `4.0`

## Running the example applications
Two XCode projects are provided demonstrating how to integrate with Carthage and CocoaPods respectively. Both projects contain two targets, one demonstrating how to integrate with Swift and the other with Objective-C.

In order to get the examples running:
1. Select your desired target and update the credentials found in `AppDelegate` with your application's credentials
1. Update `Target > General > Signing` to your team
