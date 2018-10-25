#import "ViewController.h"
#import <TradeItAccountOpeningSDKCarthage/TradeItAccountOpeningSDKCarthage-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)launchSDKButtonTapped:(id)sender {
    [TradeItAccountOpeningSDK launchOnViewController:self];
}

@end
