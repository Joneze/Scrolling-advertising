//
//  GDUDTurnView.m
//  zzzzzz
//
//  Created by jay on 2017/9/28.
//  Copyright © 2017年 曾辉. All rights reserved.
//

#import "GDUDTurnView.h"
@interface GDUDTurnView ()
{
    UILabel *label1;
    UILabel *label2;
    NSTimer *timer;
    BOOL wichOne;
    int count;
}
@end
@implementation GDUDTurnView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.clipsToBounds = YES;
        
    }
    return self;
}

- (void)timer{
    count++;
    if (count>_turnArray.count-1) {
        count = 0;
    }
    [UIView animateWithDuration:0.3 animations:^{
        if (!wichOne) {
            label1.frame = CGRectMake(0, -self.frame.size.height, self.frame.size.width, self.frame.size.height);
            label2.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        }
        if (wichOne) {
            label1.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
            label2.frame = CGRectMake(0, -self.frame.size.height, self.frame.size.width, self.frame.size.height);
        }
    } completion:^(BOOL finished) {
        wichOne = !wichOne;
        if ((int)label1.frame.origin.y==-self.frame.size.height) {
            label1.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, self.frame.size.height);
            label1.text = _turnArray[count];
        }
        if ((int)label2.frame.origin.y==-self.frame.size.height) {
            label2.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, self.frame.size.height);
            label2.text = _turnArray[count];
        }
    }];
    
}

- (void)setTurnArray:(NSArray *)turnArray {
    _turnArray = turnArray;
    count = 1;
    if (_turnArray.count == 0) {
        return;
    }
    if (_turnArray.count == 1) {
        label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        label1.text = _turnArray[0];
        label1.backgroundColor = [UIColor redColor];
        [self addSubview:label1];
    }else{
        label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        label1.text = _turnArray[0];
        label1.backgroundColor = [UIColor redColor];
        [self addSubview:label1];
        
        label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height, self.frame.size.width, self.frame.size.height)];
        label2.text = _turnArray[1];
        label2.backgroundColor = [UIColor blueColor];
        [self addSubview:label2];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timer)
                                               userInfo:@"aaaa" repeats:YES];
    }
}

@end

