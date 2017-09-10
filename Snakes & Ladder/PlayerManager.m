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

-(void)createPlayers:(NSNumber *)player{
    
    //set it for comparison
    NSInteger playerInterger = [player integerValue];
    
    
    //will loop and add the number of players user specifies
    for (int i = 1; i <= playerInterger ; i++) {
        
        //instantiate the class
        Player *playa = [[Player alloc]init];
        
        //name will increment by 1
        playa.name = [NSString stringWithFormat:@"Player%i",i];
        
        //add instantiations to array.
        [self.players addObject:playa];
        
    }
}


@end
