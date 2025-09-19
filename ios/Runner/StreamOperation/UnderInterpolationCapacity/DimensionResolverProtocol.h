#import "MatrixVisitorRotation.h"
#import "ConstructStatefulCreator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DimensionResolverProtocol : NSObject


- (void) saveCellContainPolygon;

- (void) cloneCartesianTransformer;

@end

NS_ASSUME_NONNULL_END
        