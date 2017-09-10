//
//  PlayerManager.m
//  Snakes & Ladder
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

-(instancetype)init{
    self = [super init];
    
    if (self){
    _players = [[NSMutableArray alloc]init];
    
    Player *playerClass = [[Player alloc]init];
    

    }
    return self;
}

//Fill out the implementation of the method by writing a for loop. Instantiate the number of players according to the passed in parameter value. Make sure you give each player a name like "player1", "player2", etc. As you create each player don't forget to add it to the players array.

//create
-(void)createPlayers:(NSNumber *)player{
    
    //set it for comparison
    NSInteger playerInterger = [player integerValue];
    
    for (int i = 0; i <= playerInterger ; i++) {
        
        [self.players addObject:player];
    }
}


@end
