#import "PolyfillStrategyBehavior.h"
#import "RespondBoxEvent.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YieldSessionSink : NSObject


- (void) dismissDeferredResource;

- (void) resolveMainRemainder;

@end

NS_ASSUME_NONNULL_END
        