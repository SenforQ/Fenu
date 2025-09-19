#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InterfaceCallbackProtocol : NSObject

@property (nonatomic) NSString * currentControllerVisible;

@property (nonatomic) int chartSingletonHead;

@property (nonatomic) NSMutableDictionary * stateForParam;

+ (instancetype) interfaceCallbackProtocolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) positionStructureFeedback;

- (NSMutableDictionary *) lastCardFeedback;

- (int) requestSinceNumber;

- (NSMutableSet *) interactiveGroupVisibility;

- (NSMutableArray *) effectCommandAppearance;

@end

NS_ASSUME_NONNULL_END
        