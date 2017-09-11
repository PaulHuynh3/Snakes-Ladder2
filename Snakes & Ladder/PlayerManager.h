//
//  PlayerManager.h
//  Snakes & Ladder
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic, strong) NSMutableArray* players;


//use to create the number of players 
-(void)createNumberOfPlayers:(NSNumber*)player;

//take over the function of the player's roll
-(void)roll;


//keep track of active players
//-(Player *)currentPlayer;


@end
