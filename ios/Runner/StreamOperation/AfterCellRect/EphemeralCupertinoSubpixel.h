#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EphemeralCupertinoSubpixel : NSObject

@property (nonatomic) NSMutableSet * effectLevelFrequency;

@property (nonatomic) NSMutableArray * mobileIncludeActivity;

+ (instancetype) ephemeralCupertinoSubpixelWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requiredButtonBorder;

- (NSMutableDictionary *) backwardScreenRotation;

- (int) unactivatedInterfaceDirection;

- (NSMutableSet *) cursorPlatformTag;

- (NSMutableArray *) pointParamMargin;

@end

NS_ASSUME_NONNULL_END
        