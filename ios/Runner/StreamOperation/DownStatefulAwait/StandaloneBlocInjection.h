#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StandaloneBlocInjection : NSObject

@property (nonatomic) int skinBufferBorder;

@property (nonatomic) int dynamicLogIndex;

+ (instancetype) standaloneBlocInjectionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) autoTaskOpacity;

- (NSMutableDictionary *) oldSceneTag;

- (int) logSingletonFlags;

- (NSMutableSet *) requestExceptState;

- (NSMutableArray *) singletonCycleVisibility;

@end

NS_ASSUME_NONNULL_END
        