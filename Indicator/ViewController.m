//
//  ViewController.m
//  Indicator
//
//  Created by lwx on 2017/6/28.
//  Copyright © 2017年 MyCompany. All rights reserved.
//

#import "ViewController.h"
#import "RectangleIndicatorView.h"
#import "CircleIndicatorView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CircleIndicatorView *circleIndicatorView;
@property (weak, nonatomic) IBOutlet RectangleIndicatorView *rectangleIndicatorView;

- (IBAction)circleIndicatorShine;
- (IBAction)rectangleIndicatorShine;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.rectangleIndicatorView.minValue = 10;
//    self.rectangleIndicatorView.maxValue = 80;
//    self.rectangleIndicatorView.valueToShowArray = @[@10,@20,@30,@40, @50, @60, @70, @80];
//    self.rectangleIndicatorView.indicatorValue = 50;
//    self.rectangleIndicatorView.minusBlock = ^{
//        NSLog(@"点击了 -");
//        self.rectangleIndicatorView.indicatorValue -= 1;
//    };
//    self.rectangleIndicatorView.addBlock = ^{
//        NSLog(@"点击了 +");
//        self.rectangleIndicatorView.indicatorValue += 1;
//    };
    
    self.circleIndicatorView.minValue = 0;
    self.circleIndicatorView.maxValue = 140;
    self.circleIndicatorView.innerAnnulusValueToShowArray = @[@0,@10,@20,@30, @40, @50, @60, @70,@80,@90,@100,@110,@120,@130,@140];
//    self.circleIndicatorView.indicatorValue = 600;
//    self.circleIndicatorView.minusBlock = ^{
//        NSLog(@"点击了 -");
//        self.circleIndicatorView.indicatorValue -= 1;
//    };
//    self.circleIndicatorView.addBlock = ^{
//        NSLog(@"点击了 +");
//        self.circleIndicatorView.indicatorValue += 1;
//    };
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self shineIndicatorView];
}

- (void)shineIndicatorView {
    [self.circleIndicatorView shineWithTimeInterval:0.0 pauseDuration:0 finalValue:65 finishBlock:^{
        //NSLog(@"---------- 执行完毕");
    }];
}

- (IBAction)circleIndicatorShine {
    [self.circleIndicatorView shineWithTimeInterval:0.00 pauseDuration:0 finalValue:35 finishBlock:^{
        //NSLog(@"---------- 执行完毕");
    }];
}

- (IBAction)rectangleIndicatorShine {
    [self.rectangleIndicatorView shineWithTimeInterval:0.01 pauseDuration:0 finalValue:50 finishBlock:^{
        //NSLog(@"---------- 执行完毕");
    }];
}

@end
