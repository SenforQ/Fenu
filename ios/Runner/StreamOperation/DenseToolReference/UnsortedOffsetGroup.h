#import "ContainerActivityType.h"
#import "ActiveTaskInstance.h"
#import "UnactivatedHistogramHelper.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsortedOffsetGroup : NSObject


- (void) awaitOldCommand;

- (void) resetEntropyDespiteBandwidth;

@end

NS_ASSUME_NONNULL_END
        