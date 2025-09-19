#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HistogramPhaseEdge : NSObject

@property (nonatomic) int contractionSinceStage;

@property (nonatomic) int usedActionCenter;

+ (instancetype) histogramPhaseEdgeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) routeChainMode;

- (NSMutableDictionary *) handlerScopeRate;

- (int) resolverSystemShape;

- (NSMutableSet *) tweenWorkRate;

- (NSMutableArray *) nodeProcessMargin;

@end

NS_ASSUME_NONNULL_END
        