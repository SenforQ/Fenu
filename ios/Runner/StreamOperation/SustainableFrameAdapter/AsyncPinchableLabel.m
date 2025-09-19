#import "AsyncPinchableLabel.h"
    
@interface AsyncPinchableLabel ()

@end

@implementation AsyncPinchableLabel

- (void) keepOtherScrollStage: (NSMutableDictionary *)greatPopupValidation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger behaviorExceptObserver = greatPopupValidation.count;
		UITableView *sharedPointTension = [[UITableView alloc] init];
		[sharedPointTension setDelegate:self];
		[sharedPointTension setDataSource:self];
		[sharedPointTension setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[sharedPointTension setRowHeight:50];
		NSString *numericalSizedboxPosition = @"CellIdentifier";
		[sharedPointTension registerClass:[UITableViewCell class] forCellReuseIdentifier:numericalSizedboxPosition];
		UIRefreshControl *callbackKindMargin = [[UIRefreshControl alloc] init];
		[callbackKindMargin addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[sharedPointTension setRefreshControl:callbackKindMargin];
		if (behaviorExceptObserver > 3) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = behaviorExceptObserver / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", behaviorExceptObserver);
	});
}


@end
        