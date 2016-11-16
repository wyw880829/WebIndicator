//
//  ViewController.m
//  YWPrgoress
//
//  Created by wyw on 16/11/13.
//  Copyright © 2016年 wyw. All rights reserved.
//

#import "ViewController.h"
#import "YWProgress.h"

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

/** progress */
@property (nonatomic, strong) YWProgress *proV;

@end

@implementation ViewController

- (YWProgress *)proV
{
    if (_proV == nil) {
        _proV = [[YWProgress alloc] initWithFrame:CGRectMake(0, 100, SCREENWIDTH, 2)];
        [self.view addSubview:_proV];
    }
    return _proV;
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

- (IBAction)start:(id)sender {
    
    [self.proV startAnimotion];
}
- (IBAction)stop:(id)sender {
    [self.proV stopAnimotion];
}

@end
