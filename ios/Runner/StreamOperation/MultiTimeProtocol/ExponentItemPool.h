#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExponentItemPool : NSObject

@property (nonatomic) int interactiveSpriteMargin;

@property (nonatomic) NSString * reducerOutsideOperation;

+ (instancetype) exponentItemPoolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) currentGrainState;

- (NSMutableDictionary *) semanticsForInterpreter;

- (int) graphModeSpeed;

- (NSMutableSet *) vectorStateSpacing;

- (NSMutableArray *) spriteBeyondProcess;

@end

NS_ASSUME_NONNULL_END
        