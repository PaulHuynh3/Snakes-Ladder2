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



-(Player*)nextPlayer{
    Player* nextPlayer = self.players[self.currentIndex];
    
    self.currentIndex += 1;
    if (self.currentIndex > self.players.count -1){
        self.currentIndex = 0;
    }
    return nextPlayer;
}


//keeps track of which player is rolling
-(void)roll{
    
    [[self nextPlayer] roll];

}





//another way to determine next player

////using modulo to determine which player is next
//- (NSUInteger)nextIndex {
//    NSUInteger result = self.currentIndex % self.players.count;
//    self.currentIndex += 1;
//    return result;
//}
//
//
////determine which player is next...
//-(Player *)currentPlayer{
//    //instantiate a new player everytime the index is different
//    Player *player = self.players[self.nextIndex];
//    return player;
//}



@end
