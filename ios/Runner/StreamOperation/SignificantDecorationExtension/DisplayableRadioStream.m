#import "DisplayableRadioStream.h"
    
@interface DisplayableRadioStream ()

@end

@implementation DisplayableRadioStream

- (void) finishUnsortedPlate: (NSString *)reductionModeHue
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *mutableAlphaColor = [NSMutableDictionary dictionary];
		[reductionModeHue drawInRect:CGRectMake(500, 132, 836, 891) withAttributes:nil];
		mutableAlphaColor[@"None"] = [UIColor colorNamed:@"brownColor"];;
		mutableAlphaColor[@"None"] = [UIFont fontWithName:@"TrebuchetMS" size:72];;
		//NSLog(@"sets= bussiness7 gen_str %@", bussiness7);
	});
}


@end
        