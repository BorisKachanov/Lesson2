//
//  main.m
//  task2
//
//  Created by Anton Lookin on 10/13/15.
//  Copyright © 2015 geekhub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface Card : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger *value;
@end

@implementation Card
@end

@interface  PlayingCard : Card
-(id) initWithArgs: (NSString *) nameArg andValueArg: (NSInteger) valueArg;
@end

@implementation PlayingCard

@synthesize value = _value;
-(NSInteger) value {
    return *(_value + self.name.length);
}
-(id)initWithArgs: (NSString *) nameArg andValueArg: (NSInteger) valueArg{
    self = [super init];
    if (self){
        self.name = nameArg;
        self.value = valueArg;
    }
    return self;
}

int main(int argc, char * argv[])
@autoreleasepool {
    
    Card *myCard1 = [[Card alloc]init];
    myCard1.name = @"myCard #1";
    myCard1.value = 1;
    
    Card *myCard2 = [[Card alloc]init];
    myCard2.name = @"myCard #2";
    myCard2.value = 2;
    
    Card *myCard3 = [[Card alloc]init];
    myCard3.name = @"myCard #3";
    myCard3.value = 3;
    
    PlayingCard *myPlayingCard1 = [[PlayingCard alloc]initWithArgs:@"myPlayingCard #1" andValueArg: 1];
    PlayingCard *myPlayingCard2 = [[PlayingCard alloc]initWithArgs:@"myPlayingCard #2" andValueArg: 2];
    PlayingCard *myPlayingCard3 = [[PlayingCard alloc]initWithArgs:@"myPlayingCard #3" andValueArg: 3];
    
    NSArray *array = @[myCard1, myCard2, myCard3, myPlayingCard1, myPlayingCard2, myPlayingCard3];
    
    for (Card *item in array){
        NSLog(@"%i", item.value);
    }
    return 0;
}
@end
