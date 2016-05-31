//
//  ViewController.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "ViewController.h"
#import "SNLinkBlock.h"
//#import "UIView+Link.h"
//#import "UILabel+Link.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* test = [UIView new]
    .view_backgroundColor([UIColor redColor]);
    
    
    UILabel* tst = (UILabel*)[UILabel new]
    .lab_numberOfLines(1)
    .lab_text(@"1234")
    .view_frame(CGRectMake(0, 0, 100, 100))
    .view_x(100);
    
//    test.view_width(100).
    [self.view addSubview:test];
    [self.view addSubview:tst];
    
    
    
//    tst
//    .lab_font([UIFont systemFontOfSize:15])).view_backgroundColor([UIColor redColor]);
    
//    [self.view addSubview:test];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
