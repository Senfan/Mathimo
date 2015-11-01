//
//  ViewController.m
//  Mathimo
//
//  Created by 王淇峰 on 15/11/1.
//  Copyright (c) 2015年 gameloft. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

-(void) setFlipCount:(int)flipCount {
    
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}


- (Deck *)deck {
    
    if(!_deck) {
        _deck = [self createDeck];
        NSLog(@"deck is created!");
    }
    return _deck;
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

-(IBAction) touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed: @"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else {
        Card * randomCard = [self.deck drawRandomCard];
        if(randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed: @"cardfront"] forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents	 forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
    
}

@end
