//
//  main.m
//  Snakes & Ladders
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PlayerManager *playerManager = [[PlayerManager alloc]init];
        Player *player =[[Player alloc]init];
        
        
        //continue looping while array.count is less than 2 so user has to input 2 or greater
        while (playerManager.players.count < 2) {
            
            
            NSString *amountOfPlayerMessage = @"Please enter the number of players:";
            NSLog(@"%@",amountOfPlayerMessage);
            
            //set character to 255
            char characters [255];
            
            //limit input to max 255 characters fgets collect user's answer
            fgets(characters, 255, stdin);
            
            //convert char to string
            NSString* characterToString = [NSString stringWithCString:characters encoding:NSUTF8StringEncoding];
            //trimming white space
            NSString* numberPlayers = [characterToString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            //Convert numberPlayers to int to compare
            NSInteger playerCount = [numberPlayers intValue];
            if (playerCount == 0) {
                NSLog(@"enter a legit numeric number");
                continue;
            }
            
            [playerManager createNumberOfPlayers:@(playerCount)];
            
        }
        
        
        NSLog(@"Welcome to Snakes and Ladders. Please type r to begin!");
        //the property default is set to NO, for it to run we need YES.
        while (player.gameOver) {
            
            //set character to 255
            char inputchars [255];
            
            //limit input to max 255 characters fgets collect user's answer
            fgets(inputchars, 255, stdin);
            
            //convert char to string
            NSString* charToString = [NSString stringWithCString:inputchars encoding:NSUTF8StringEncoding];
            
            NSString* userAnswer = [charToString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([userAnswer isEqualToString:@"r"] || [userAnswer isEqualToString:@"roll"]){
                //when you set this to void _currentSquare can not equal to roll.
                [playerManager roll];
                
            }
            
        }
    }
    return 0;
}
