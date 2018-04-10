//
//  ViewController.m
//  OnceLayoutDemo
//
//  Created by 曹绍奇 on 2018/4/9.
//  Copyright © 2018年 Once. All rights reserved.
//

#import "ViewController.h"
#import "UIView+OnceLayout.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onDeviceOrientationDidChange)
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIView * view_one=[[UIView alloc]init];
    view_one.backgroundColor=[UIColor redColor];
    [self.view addSubview:view_one];
    view_one.width=50;
    view_one.height=50;
    view_one.once_rightToView(self.view, 10);
    view_one.once_topToView(self.view, 20);
    
    
    UIView * view_two=[[UIView alloc]init];
    view_two.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:view_two];
    view_two.width=200;
    view_two.height=200;
    view_two.once_rightToView(self.view, 100);
    view_two.once_topToView(self.view, 200);
    
    
    UIView * view_three=[[UIView alloc]init];
    view_three.backgroundColor=[UIColor greenColor];
    [view_two addSubview:view_three];
    view_three.width=80;
    view_three.height=80;
    view_three.once_leftToView(view_two, 20);
    view_three.once_topToView(view_two, 30);
    
    UIView * view_four=[[UIView alloc]init];
    view_four.backgroundColor=[UIColor greenColor];
    [self.view addSubview:view_four];
    view_four.width=80;
    view_four.height=80;
    view_four.once_leftToView(view_two, 20);
    view_four.once_topToView(view_two, 30);
    
    
    UIView * view_five=[[UIView alloc]init];
    view_five.backgroundColor=[UIColor greenColor];
    [self.view addSubview:view_five];
    view_five.width=80;
    view_five.height=80;
    view_five.once_topToView(view_two, 20);
    view_five.once_rightToView(self.view, 30);
    
    
    
    
//    self.testView=[[UIView alloc]initWithFrame:CGRectMake(40, 100, 100, 100)];
//    [self.testView setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:self.testView];
////    NSLog(@"UIView--%@",NSStringFromCGRect(testView.frame));
//    //1
//
//    CGRect frame=self.testView.frame;
//    frame.size.width=120;
//    self.testView.frame=frame;
////    NSLog(@"UIView--%@",NSStringFromCGRect(testView.frame));
//    //2
//    self.testView.width=120;
////    NSLog(@"UIView--%@",NSStringFromCGRect(testView.frame));
//
//    //    self.testView.height=10;
//    //    [self printFrame];
//
////    testView.once_right=10;
//    self.testView.once_rightToView( self.view, 10);
////    NSLog(@"UIView--%@",NSStringFromCGRect(testView.frame));
//
//
//    UIView * view_vv=[[UIView alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
//    view_vv.backgroundColor=[UIColor greenColor];
//    [self.view addSubview:view_vv];
//
//
//    view_vv.once_rightToView( self.testView, 30);
//
////    NSLog(@"11111111111111111111111111");
//
////    view_vv.once_right=60;
//
//
////    view_vv.rightToView(testView, 50);
//
////    view_vv.rightToView(testView, testView , 50);
//
//
//
////    NSLog(@"UIView--%@",NSStringFromCGRect(view_vv.frame));
//
//
//
//    NSLog(@"啊啊啊啊啊啊%f",self.testView.max_left);
//
//    NSLog(@"事实上事实上所%f",view_vv.max_left);
//
//
//
//
//    UIView * view_two=[[UIView alloc]initWithFrame:CGRectMake(100, 300, 120, 120)];
//    view_two.backgroundColor=[UIColor purpleColor];
//    [self.view addSubview:view_two];
//
//    UIView * view_three=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
//    view_three.backgroundColor=[UIColor blueColor];
//    [view_two addSubview:view_three];
//
//    view_three.once_rightToView( view_two, 20);
//
////    NSLog(@"%f",view_two.max_right);
//
//
//
//    UIView *purpleView = [[UIView alloc] init];
//    purpleView.backgroundColor = [UIColor purpleColor];
//    // 禁止将 AutoresizingMask 转换为 Constraints
//    purpleView.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:purpleView];
//    // 添加 width 约束
//    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:150];
//    [purpleView addConstraint:widthConstraint];
//    // 添加 height 约束
//    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:150];
//    [purpleView addConstraint:heightConstraint];
//    // 添加 left 约束
//    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:100];
//    [self.view addConstraint:leftConstraint];
//    // 添加 top 约束
//    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:200];
//    [self.view addConstraint:topConstraint];
    
}



- (BOOL)onDeviceOrientationDidChange{
//    [self.superview layoutSubviews];
//    [self.superview layoutIfNeeded];
//    [self.superview setNeedsLayout];
    [self.view layoutSubviews];
    //获取当前设备Device
//    self.testView.once_rightToView( self.view, 10);
//    UIDevice *device = [UIDevice currentDevice] ;
//    //识别当前设备的旋转方向
//    switch (device.orientation) {
//        case UIDeviceOrientationFaceUp:
//            NSLog(@"屏幕幕朝上平躺");
//            break;
//
//        case UIDeviceOrientationFaceDown:
//            NSLog(@"屏幕朝下平躺");
//            break;
//
//        case UIDeviceOrientationUnknown:
//            //系统当前无法识别设备朝向，可能是倾斜
//            NSLog(@"未知方向");
//            break;
//
//        case UIDeviceOrientationLandscapeLeft:
//            NSLog(@"屏幕向左橫置");
//             self.testView.once_rightToView( self.view, 10);
//            break;
//
//        case UIDeviceOrientationLandscapeRight:
//            NSLog(@"屏幕向右橫置");
//             self.testView.once_rightToView( self.view, 10);
//            break;
//
//        case UIDeviceOrientationPortrait:
//            NSLog(@"屏幕直立");
//            break;
//
//        case UIDeviceOrientationPortraitUpsideDown:
//            NSLog(@"屏幕直立，上下顛倒");
//            break;
//
//        default:
//            NSLog(@"無法识别");
//            break;
//    }
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
