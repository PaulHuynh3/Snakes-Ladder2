//
//  PlayerManager.m
//  Snakes & Ladder
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PlayerManager.h"

@interface PlayerManager()
@property (nonatomic, assign) NSInteger currentIndex;
@end

@implementation PlayerManager

-(instancetype)init{
    self = [super init];
    
    if (self){
        _players = [[NSMutableArray alloc]init];
        
        _currentIndex = 0;
        
        
    }
    return self;
}

//Fill out the implementation of the method by writing a for loop. Instantiate the number of players according to the passed in parameter value. Make sure you give each player a name like "player1", "player2", etc. As you create each player don't forget to add it to the players array.

-(void)createNumberOfPlayers:(NSNumber *)number{
    
    //set it for comparison
    //    NSInteger numberOfPlayers = ;
    
    
    //will loop and add the number of players user specifies
    for (int i = 1; i <= [number integerValue] ; i++) {
        
        //instantiate the class
        Player *player = [[Player alloc]init];
        
        //name will increment by 1
        player.name = [NSString stringWithFormat:@"Player%i",i];
        
        //add instantiations to array.
        [self.players addObject:player];
        
    }
}

- (NSUInteger)nextIndex {
    NSUInteger result = self.currentIndex % self.players.count;
    self.currentIndex += 1;
    return result;
}

-(void)roll{
    [[self currentPlayer] roll];
}

-(Player *)currentPlayer{
    NSUInteger index = [self nextIndex];
    Player *player = self.players[index];
    return player;
}

@end
