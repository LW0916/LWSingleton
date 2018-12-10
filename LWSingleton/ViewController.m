//
//  ViewController.m
//  LWSingleton
//
//  Created by lwmini on 2018/12/10.
//  Copyright © 2018年 lw. All rights reserved.
//

#import "ViewController.h"
#import "LWSingletonA.h"
#import "LWSingletonB.h"
#import "LWSingletonC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LWSingletonC *singletonC = [LWSingletonC sharedInstance];
    LWSingletonB *singletonB = [LWSingletonB sharedInstance];
    LWSingletonA *singletonA1 = [LWSingletonA sharedInstance];
    LWSingletonA *singletonA2 = [[LWSingletonA alloc]init];
    LWSingletonA *singletonACopy = [singletonA1 copy];
    LWSingletonA *singletonAMutableCopy = [singletonA1 mutableCopy];
 NSLog(@"singletonC= %@singletonB=%@singletonA1=%@,singletonA2=%@singletonACopy=%@singletonAMutableCopy=%@",singletonC,singletonB,singletonA1,singletonA2,singletonACopy,singletonAMutableCopy);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
