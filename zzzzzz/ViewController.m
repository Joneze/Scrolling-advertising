//
//  ViewController.m
//  zzzzzz
//
//  Created by jay on 2017/9/28.
//  Copyright © 2017年 曾辉. All rights reserved.
//

#import "ViewController.h"
#import "GDUDTurnView.h"

@interface ViewController ()
@property (nonatomic, strong)UILabel *Dtitle;
@property (nonatomic, strong)UIView *bgView ;
@property (nonatomic, strong)GDUDTurnView *turnView;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    [self labelScorrl];
}

-(void)labelScorrl
{
    
    NSArray *arr = @[@"这是第一个",@"这是第二个",@"这是第3个",@"这是第4",@"这是第5"];
    
//    _bgView = [UIView new];
//    _bgView.frame = CGRectMake(50, 100, 200, 60);
//    _bgView.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:_bgView];
    
    _turnView = [[GDUDTurnView alloc] initWithFrame:CGRectMake(50, 100, 300, 50)];
    _turnView.turnArray = arr;
    [self.view addSubview:_turnView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
