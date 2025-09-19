#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OnMaterialIntegrity : NSObject

@property (nonatomic) int pointPerPhase;

+ (instancetype) onMaterialIntegrityWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) projectionActivityState;

- (NSMutableDictionary *) slashCycleDepth;

- (int) tensorStoreFrequency;

- (NSMutableSet *) dependencyForKind;

- (NSMutableArray *) sizeBeyondWork;

@end

NS_ASSUME_NONNULL_END
        