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

@property NSMutableArray* players;

//use to create the number of players 
-(void)createPlayers:(NSNumber*)player;

@end
