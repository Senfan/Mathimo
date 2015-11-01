//
//  Deck.h
//  Mathimo
//
//  Created by 王淇峰 on 15/11/1.
//  Copyright (c) 2015年 gameloft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
