#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GlobalDescriptionManager : NSObject

@property (nonatomic) NSMutableSet * independentLocalizationPadding;

@property (nonatomic) NSString * petSystemAlignment;

+ (instancetype) globalDescriptionManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) publicTextStyle;

- (NSMutableDictionary *) easyTextBound;

- (int) mainTransitionType;

- (NSMutableSet *) aspectratioOrStructure;

- (NSMutableArray *) tabbarDuringStyle;

@end

NS_ASSUME_NONNULL_END
        