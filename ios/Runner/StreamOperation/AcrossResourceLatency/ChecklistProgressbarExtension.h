#import "DeferredPrimaryEffect.h"
#import "VisualizeTabviewInjection.h"
#import "SignScalabilityCache.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChecklistProgressbarExtension : NSObject


- (void) introspectAlertAgainstStore;

- (void) wrapCoordinatorAwayPolyfill;

@end

NS_ASSUME_NONNULL_END
        