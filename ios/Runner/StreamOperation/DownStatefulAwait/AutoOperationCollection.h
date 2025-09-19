#import "MainBrushFilter.h"
#import "ToBrushRange.h"
#import "AugmentCompositionalQueue.h"
#import "SequentialCompositionalHistogram.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AutoOperationCollection : NSObject


- (void) preparePainterSinceLatency;

- (void) resumeWriteUpNotifier;

@end

NS_ASSUME_NONNULL_END
        