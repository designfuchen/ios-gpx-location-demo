//
//  LocationPrinter.h
//  loctiontest
//
//  Created on 2026/7/7.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationPrinter : NSObject<CLLocationManagerDelegate>
- (void)start;

@end

NS_ASSUME_NONNULL_END
