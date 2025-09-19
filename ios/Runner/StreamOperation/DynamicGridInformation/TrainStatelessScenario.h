#import "IntensityObserverDelegate.h"
#import "LocateMasterManager.h"
#import "OnTickerMetrics.h"
#import "DeferredProfileJoiner.h"
#import "AdaptiveSinkResilience.h"
#import "UnmountEnabledConsumer.h"
#import "OverThreadSensor.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TrainStatelessScenario : NSObject


- (void) propagateMediumEntropy;

- (void) setCrudeManagerMode;

@end

NS_ASSUME_NONNULL_END
        