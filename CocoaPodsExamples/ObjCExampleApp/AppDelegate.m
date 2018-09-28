#import "AppDelegate.h"
#import <TradeItAccountOpeningSDK/TradeItAccountOpeningSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    # error "Provide your TradeIt API key and Google Maps API Key"
    [TradeItAccountOpeningSDK configureWithApiKey:@"YOUR TRADEIT API KEY"
                                      environment:TradeItAccountOpeningEnvironmentProduction
                                 googleMapsApiKey:@"YOUR GOOGLE MAPS API KEY"];

    return YES;
}

@end
