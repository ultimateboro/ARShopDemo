//
//  AppDelegate.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "AppDelegate.h"

#import "MenuViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MenuViewController * vc = [[MenuViewController alloc] init];
    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    self.window.rootViewController = nv;
    [self.window makeKeyAndVisible];
    return YES;
}
							
@end
