//
//  main.m
//  task1
//
//  Created by Anton Lookin on 10/13/15.
//  Copyright © 2015 geekhub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Огласите и инициализируйте переменные всех фундаментальных типов которые сможете найти.
        int i = 1;
        float f = 3.7f;
        double d = 8.44e+11;
        char c = 'H';
        long double l = 12.341;
        //С помощью функции NSLog поочередно выведите свои переменные в консоль.
        NSLog(@"Integer variable = %i", i);
        NSLog(@"Float variable = %f", f);
        NSLog(@"Double variable = %a", d);
        NSLog(@"Char variable = %c", c);
        NSLog(@"Long double variable = %Lf", l);
        //Создайте три цикла (while-do do-while for) и с помощью функции NSLog выведите значения от 1 до 10 в консоль
        
        for(int i = 1; i <= 10; i++){
            NSLog(@"%i", i);
        }
        
        while (i <= 10){
            NSLog(@"%i", i);
            i++;
        }
        do{
            NSLog(@"%i", i);
            i++;
        }while(i <= 10);
        //Создайте экземпляры класса NSString наибольшым количеством способом которые сможете придумать (начинайте с [[NSString alloc] init], искать по ключевым словам initialization, NSString, class, allocation)
        NSString *string1 = [[NSString alloc]init];
        NSString *string2 = [NSString alloc];
        [string2 init];
        NSString *string3 = [NSString stringWithString: string1];
        NSString *string4 = [[NSString alloc] initWithString: string1];
        //Напишите любой код который приведет к крешу приложения (ключевые слова crash, stack trac, program termination)
        /*NSString *string1 = [NSString alloc];
         NSString *string2 = [NSString stringWithString: string1];
         NSString *string3 = [[NSString alloc] initWithString: string2];
         NSLog(@"%@", string3);*/
        
        //Напишите самый короткий код который приведет к крешу приложения.
        /*NSString *string = [NSString alloc];
         NSLog(@"%@", string);*/
    }
    return 0;
}
