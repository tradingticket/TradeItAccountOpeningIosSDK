#import "AppDelegate.h"
#import <TradeItAccountOpeningSDK/TradeItAccountOpeningSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    # error "Provide your TradeIt API key"
    [TradeItAccountOpeningSDK configureWithApiKey:"YOUR TRADEIT API KEY" environment:TradeItAccountOpeningEnvironmentProduction];
    return YES;
}

@end
