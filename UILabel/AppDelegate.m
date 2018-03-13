//
//  AppDelegate.m
//  UILabel
//
//  Created by Sure on 15-8-17.
//  Copyright (c) 2015年 Sure. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    /*
     UILabel文字标签
     UILabel继承于UIView
     */
    //创建文字标签
    UILabel * myLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 100)];
    //设置标签背景颜色
    myLabel.backgroundColor = [UIColor orangeColor];
    //设置文字
    myLabel.text = @"犯我德邦者，虽远必诛!断剑重铸之日，骑士归来之时!你也要来一发吗?";
    //设置文字颜色
    myLabel.textColor = [UIColor blueColor];
    //设置文字居中样式
    /*
     NSTextAlignmentLeft    左对齐
     NSTextAlignmentRight   右对齐
     NSTextAlignmentCenter  居中
     */
    myLabel.textAlignment = NSTextAlignmentCenter;
    //设置文字字体
    myLabel.font = [UIFont systemFontOfSize:20];//标准20号
    myLabel.font = [UIFont boldSystemFontOfSize:20];//加粗20号
    myLabel.font = [UIFont italicSystemFontOfSize:20];//斜体20号
    
    //文字自适应 根据标签的大小自动调节文字字体的大小
    myLabel.adjustsFontSizeToFitWidth = NO;//默认为NO
    
    //文字换行
    myLabel.numberOfLines = 0;//设置为0表示可自动换行
    //加载到窗口上
    [self.window addSubview:myLabel];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
