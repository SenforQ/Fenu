#import "QuantizationImagePresenter.h"
#import "StrokeTempleFeedback.h"
#import "MissionMendExtension.h"
#import "ToSizeLinker.h"
#import "FromGraphMaterial.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DraggableDescriptorProtocol : NSObject


- (void) prepareDelegateForAllocator;

- (void) displayPermanentConstraint;

@end

NS_ASSUME_NONNULL_END
        