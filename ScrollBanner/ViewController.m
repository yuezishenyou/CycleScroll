//
//  ViewController.m
//  ScrollBanner
//
//  Created by maoziyue on 2017/9/11.
//  Copyright © 2017年 maoziyue. All rights reserved.
//

#import "ViewController.h"
#import "JZLCycleView.h"


#import "JZLCycleView.h"

#define JZLScreenWidth [UIScreen mainScreen].bounds.size.width
#define JZLCycleViewHeight 200

@interface ViewController ()<JZLCycleViewDelegate>


@property (nonatomic, strong) JZLCycleView *cycleView;
//@property (nonatomic, weak) JZLCycleView *cycleView2;




@property (nonatomic,copy)NSArray *imageURLs;


@end

@implementation ViewController

- (void)dealloc
{
    NSLog(@"---vc释放----");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"you" style:UIBarButtonItemStyleDone target:self action:@selector(rightAction)];
    
   
    
    
    
    _cycleView = [JZLCycleView cycleCollectionViewWithFrame:CGRectMake(0, 100, JZLScreenWidth, JZLCycleViewHeight) PlaceholderImage:[UIImage imageNamed:@"placeholderImage"]];
    
    _cycleView.backgroundColor = [UIColor whiteColor];
    
    _cycleView.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    
    _cycleView.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    
    _cycleView.delegate = self;
    
    _cycleView.clickItemBlock = ^(NSInteger index){
        NSLog(@"%ld---------",(long)index);
    };
    
    [self.view addSubview:_cycleView];
    
    //延迟模拟网络加载
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableArray *arrTemp = [NSMutableArray array];
        [arrTemp addObject:@"http://sudasuta.com/wp-content/uploads/2013/10/10143181686_375e063f2c_z.jpg"];
        [arrTemp addObject:@"http://my.isself.com/upimg/user/30/20131117/13846939809150.jpg"];
        [arrTemp addObject:@"http://fzone.oushinet.com/bbs/data/attachment/forum/201208/15/074140zsb6ko6hfhzrb40q.jpg"];
        
        _cycleView.imageUrlArray = arrTemp;
    });
    
    
//    //
//    NSMutableArray *arrTemp = [NSMutableArray array];
//
//    for (NSInteger i = 1; i < 5; i++)
//    {
//        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%ld",@"car",(long)i]];
//        [arrTemp addObject:image];
//    }
//    _cycleView2 = [JZLCycleView cycleCollectionViewWithFrame:CGRectMake(0, 300, JZLScreenWidth, JZLCycleViewHeight) imageArray:arrTemp PlaceholderImage:[UIImage imageNamed:@"placeholderImage"]];
//    [self.view addSubview:_cycleView2];
    
    
}

//代理跳转
- (void)selectItemAtIndex:(NSInteger)index
{
    NSLog(@"-%ld-",index);
}






- (void)rightAction
{
    
}






























- (void)ad
{
    // recommend to use SDWebImage lib to load web image
    //    [imageView setImageWithURL:[self.imageURLs objectAtIndex:index] placeholderImage:nil];
    
    //imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[self.imageURLs objectAtIndex:index]]];
}



@end

















