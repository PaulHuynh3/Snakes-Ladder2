//
//  Player.h
//  Snakes & Ladders
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary* gameLogic;
@property (nonatomic) NSString* output;
@property (nonatomic) BOOL gameOver;
@property (nonatomic) NSString* name;


-(void)roll;

-(instancetype)init;


@end
