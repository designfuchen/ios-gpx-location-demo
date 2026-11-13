//
//  ViewController.m
//  loctiontest
//
//  Created on 2026/7/7.
//

#import "ViewController.h"
#import "LocationPrinter.h"

@interface ViewController ()
@property (nonatomic, strong) LocationPrinter *locationPrinter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.locationPrinter = [[LocationPrinter alloc] init];
    [self.locationPrinter start];

    
}


@end
