#import "ScrollAllocatorDelegate.h"
#import "ResizableNodeWrapper.h"
#import "VisitScaleRouter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConstraintTimelineDelegate : NSObject


- (void) cleanClipperUntilSingleton;

- (void) afterSizedboxFactory;

@end

NS_ASSUME_NONNULL_END
        