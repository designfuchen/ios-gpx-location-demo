#import "LocationPrinter.h"

@interface LocationPrinter ()
@property (nonatomic, strong) CLLocationManager *manager;
@end

@implementation LocationPrinter

- (instancetype)init {
    self = [super init];
    if (self) {
        self.manager = [[CLLocationManager alloc] init];
        self.manager.delegate = self;
        self.manager.desiredAccuracy = kCLLocationAccuracyBest;
    }
    return self;
}

- (void)start {
    [self.manager requestWhenInUseAuthorization];
    [self.manager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *loc = locations.lastObject;
    if (!loc) return;

    NSLog(@"纬度: %f, 经度: %f", loc.coordinate.latitude, loc.coordinate.longitude);
    NSLog(@"海拔: %f 米, 精度: %f 米", loc.altitude, loc.horizontalAccuracy);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"定位失败: %@", error.localizedDescription);
}

- (void)locationManagerDidChangeAuthorization:(CLLocationManager *)manager {
    NSLog(@"授权状态: %ld", (long)manager.authorizationStatus);
}

@end
