//
//  Card.h
//  Mathimo
//
//  Created by 王淇峰 on 15/11/1.
//  Copyright (c) 2015年 gameloft. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;
@end