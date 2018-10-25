#import "ViewController.h"
#import <TradeItAccountOpeningSDK/TradeItAccountOpeningSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)launchSDKButtonTapped:(id)sender {
    [TradeItAccountOpeningSDK launchOnViewController:self];
}

@end
