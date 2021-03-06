//
//  Deck.m
//  Mathimo
//
//  Created by 王淇峰 on 15/11/1.
//  Copyright (c) 2015年 gameloft. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSMutableArray *)cards {
    
    if(!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    
    if(atTop) {
        [self.cards insertObject:card atIndex:0];
    }else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card {
    
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard {
    
    Card *randomCard = nil;
    
    NSLog(@"number of cards %d", [self.cards count]);
    
    if([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        NSLog(@"number of cards2 %d", [self.cards count]);
    }
    
    return randomCard;
}
@end
