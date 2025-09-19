#import "EscalateSliderAction.h"
#import "StatefulMarginCollection.h"
#import "MarshalLabelStream.h"
#import "NormalResultMechanism.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeferredEffectState : NSObject


- (void) generateTransitionAsync;

- (void) handleWidgetAmongScene;

@end

NS_ASSUME_NONNULL_END
        