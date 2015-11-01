//
//  Card.m
//  Mathimo
//
//  Created by 王淇峰 on 15/11/1.
//  Copyright (c) 2015年 gameloft. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSString *)otherCards {
    
    int score = 0;
    
    for(Card * card in otherCards) {
        
        if([card.contents isEqualToString:self.contents]) {
            score = 1;
            break;
        }
    }
    
    return  score;
}

@end
