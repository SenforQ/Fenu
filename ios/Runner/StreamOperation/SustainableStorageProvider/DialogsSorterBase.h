#import "CriticalScenarioAdapter.h"
#import "DisabledWorkflowData.h"
#import "DirectlyCatalystObserver.h"
#import "OtherVariantData.h"
#import "AsyncNormalWorkflow.h"
#import "WithoutMasterEvent.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DialogsSorterBase : NSObject


- (void) cloneCustomizedObserver;

- (void) prepareAddBelowTheme;

@end

NS_ASSUME_NONNULL_END
        