#import "SegmentConverterReference.h"
#import "ThemeEventStack.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommandLifecycleAdapter : NSObject


- (void) limitDenseDependency;

- (void) transitionCompositionalScale;

@end

NS_ASSUME_NONNULL_END
        