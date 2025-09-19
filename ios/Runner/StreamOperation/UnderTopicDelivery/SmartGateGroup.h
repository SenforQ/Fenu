#import "GeometricTappableTabview.h"
#import "UnmountedAlphaProtocol.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmartGateGroup : NSObject


- (void) serializeWithAlphaCommand;

- (void) releaseTappableAnimation;

@end

NS_ASSUME_NONNULL_END
        