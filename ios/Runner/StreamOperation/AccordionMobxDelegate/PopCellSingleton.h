#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopCellSingleton : NSObject

@property (nonatomic) int groupCommandName;

@property (nonatomic) NSString * modelAgainstPlatform;

+ (instancetype) popCellSingletonWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) smallChapterOrientation;

- (NSMutableDictionary *) gestureStrategyName;

- (int) widgetStateIndex;

- (NSMutableSet *) bufferAsMediator;

- (NSMutableArray *) logParameterIndex;

@end

NS_ASSUME_NONNULL_END
        