//
//  ViewController.m
//  iOSIconSwitch
//
//  Created by Test Wuerth on 03.03.22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)setOld:(id)sender {
    [self changeIcon:@"ic_launcher_old"];
}

- (IBAction)setNew:(id)sender {
    [self changeIcon:@"ic_launcher_new"];
}

- (void)changeIcon:(NSString*)to {
    NSLog(@"app icon chsnging to %@", to);
    [[UIApplication sharedApplication] setAlternateIconName:to completionHandler:^(NSError * _Nullable error){
        if (error) {
            NSLog(@"App icon failed to change %@", error.localizedDescription);
            } else {
                NSLog(@"App icon changed successfully");
            }
        }
    ];
}

@end
