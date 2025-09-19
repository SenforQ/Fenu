#import "UpdateCharacterProcessor.h"
#import "InstructionCubitHelper.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LiteBulletStream : NSObject


- (void) lockContainerBuffer;

- (void) syncCacheAgainstCubit;

@end

NS_ASSUME_NONNULL_END
        