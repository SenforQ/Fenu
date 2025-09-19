#import "TrainMonsterHandler.h"
    
@interface TrainMonsterHandler ()

@end

@implementation TrainMonsterHandler

- (instancetype) init
{
	NSNotificationCenter *activatedControllerOrigin = [NSNotificationCenter defaultCenter];
	[activatedControllerOrigin addObserver:self selector:@selector(capacitiesAroundTask:) name:UIKeyboardWillHideNotification object:nil];
	return self;
}

- (void) cacheDenseChannels: (NSMutableArray *)sharedResponseScale
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger assetStageInset = [sharedResponseScale count];
		int skinPhaseFeedback=0;
		for (int i = 0; i < assetStageInset; i++) {
			skinPhaseFeedback += [[sharedResponseScale objectAtIndex:i] intValue];
		}
		float giftOfBuffer = (float)skinPhaseFeedback / assetStageInset;
		if (assetStageInset > 0) {
			NSLog(@"Average: %f", giftOfBuffer);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}

- (void) capacitiesAroundTask: (NSNotification *)activePreviewDistance
{
	//NSLog(@"userInfo=%@", [activePreviewDistance userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        