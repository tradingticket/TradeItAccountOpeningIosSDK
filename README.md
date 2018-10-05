# TradeItAccountOpeningIosSDK
Distribution repository for the pre-built `TradeItAccountOpeningIosSDK` binary along with all pre-built dependnecies.

## Installation
_For up to date installation instructions, see the [Carthage documentation](https://github.com/Carthage/Carthage)_
1. Add `github "tradingticket/TradeItAccountOpeningIosSDK"` to your `Cartfile`
1. Run `carthage update --platform iOS`
1. Open your XCode project and select *General* from your appliaction target's configuration
1. Open your project's `Carthage/Build` directory and drag and drop all created `.framework` files into the *Embedded Binaries* section (_this is a statically built framework, adding dependencies to the_ *Linked Frameworks and Libraries* _section is not necessary_)
   
