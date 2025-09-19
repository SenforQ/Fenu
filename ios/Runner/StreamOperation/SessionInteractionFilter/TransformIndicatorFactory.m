#import "TransformIndicatorFactory.h"
    
@interface TransformIndicatorFactory ()

@end

@implementation TransformIndicatorFactory

- (void) detachProtocolDuringCommand: (NSString *)radioTierTop
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *mobileKindSkewy = [[UISegmentedControl alloc] init];
		[mobileKindSkewy insertSegmentWithTitle:radioTierTop atIndex:0 animated:YES];
		mobileKindSkewy.selected = YES;
		mobileKindSkewy.enabled = NO;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        