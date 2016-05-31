//
//  ViewController.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "ViewController.h"
#import "SNLinkBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] init];
    label.lab_font([UIFont systemFontOfSize:30]).lab_text(@"懒惰的小蜜蜂").lab_textColor([UIColor redColor]).lab_x(100).lab_y(100).lab_height(50).lab_width(200);
    [self.view addSubview:label];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
