//
//  MessageViewController.m
//  Prect
//
//  Created by apple on 16/11/12.
//  Copyright © 2016年 赵伟争. All rights reserved.
//

#import "MessageViewController.h"

#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface MessageViewController ()<UIScrollViewDelegate>

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
     scrollView.contentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT-49);
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    scrollView.backgroundColor = [UIColor grayColor];
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.alwaysBounceVertical = NO;
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    
    
    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT/2)];
    topView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:topView];
    
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT/2+5, SCREEN_WIDTH, SCREEN_HEIGHT-64-49)];
    bottomView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:bottomView];
    
    // Do any additional setup after loading the view.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if (scrollView.contentOffset.y > -64) {
        CGPoint p = CGPointMake(0, -64);
        scrollView.contentOffset = p;
        //[scrollView setScrollEnabled:NO];
    } else {
        //[scrollView setScrollEnabled:YES];
    }
    NSLog(@"%@", scrollView);
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
   // NSLog(@"%@", scrollView);
}

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    //NSLog(@"%@", scrollView);
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view {

        NSLog(@"%@ ,%@", scrollView, view);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
