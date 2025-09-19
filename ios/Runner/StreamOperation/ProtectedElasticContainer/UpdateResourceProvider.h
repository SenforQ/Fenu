#import "ModelLifecycleCache.h"
#import "ScaleSubscriptionAdapter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpdateResourceProvider : NSObject


- (void) belowTransitionChannel;

- (void) cancelDisabledError;

@end

NS_ASSUME_NONNULL_END
        