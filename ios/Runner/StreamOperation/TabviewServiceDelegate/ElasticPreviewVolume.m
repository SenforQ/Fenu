#import "ElasticPreviewVolume.h"
    
@interface ElasticPreviewVolume ()

@end

@implementation ElasticPreviewVolume

- (void) clearRichtextExceptEffect: (NSMutableArray *)transitionVersusState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UITableView *largeColumnFeedback = [[UITableView alloc] initWithFrame:CGRectMake(49, 229, 494, 339) style:UITableViewStylePlain];
		[largeColumnFeedback registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
		UIRefreshControl *logByTask = [[UIRefreshControl alloc] init];
		[logByTask addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		//NSLog(@"Business19 gen_arr with count: %lu%@", (unsigned long)[transitionVersusState count]);
	});
}


@end
        