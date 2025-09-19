#import "DisplayableProcessorHandler.h"
    
@interface DisplayableProcessorHandler ()

@end

@implementation DisplayableProcessorHandler

- (void) inflateMobxAndGraph
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int behaviorAdapterSize = 70;
		int previewForProcess[behaviorAdapterSize];
		for (int i = 0; i < behaviorAdapterSize; i++) {
			previewForProcess[i] = i * 4;
		}
		int fixedCycleTop = (int)(sizeof(previewForProcess) / sizeof(int));
		for (int i = 0; i < fixedCycleTop/2; i++) {
			previewForProcess[fixedCycleTop - i - 1] = 3;
		}
		//NSLog(@"Business17 gen_int executed%@", Business17);
	});
}


@end
        