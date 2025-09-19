#import "GrainDeliveryProtocol.h"
#import "TrainStatelessHelper.h"
#import "ElasticDenseNavigator.h"
#import "LoopDecoratorHead.h"
#import "FindBulletSingleton.h"
#import "SyncAnchorFilter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RequestPhaseKind : NSObject


- (void) byMediaProvider;

- (void) showAdvancedPresenterPhase;

@end

NS_ASSUME_NONNULL_END
        