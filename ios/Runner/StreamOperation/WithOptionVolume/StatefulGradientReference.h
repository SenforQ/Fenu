#import "SubstantialSelectorObserver.h"
#import "ActionVarFlags.h"
#import "SharedBasicEffect.h"
#import "QuantizationPersistentEffect.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StatefulGradientReference : NSObject


- (void) notifyWithinSegueAction;

- (void) toDelegateStorage;

@end

NS_ASSUME_NONNULL_END
        