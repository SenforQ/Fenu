#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RemainderLayerKind : NSObject

@property (nonatomic) NSString * commandOrLevel;

+ (instancetype) remainderLayerKindWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) futureOfTier;

- (NSMutableDictionary *) particleAmongTier;

- (int) mediumFrameFlags;

- (NSMutableSet *) transitionAtTask;

- (NSMutableArray *) persistentGestureTop;

@end

NS_ASSUME_NONNULL_END
        