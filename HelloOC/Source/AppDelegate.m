//
//  AppDelegate.m
//  HelloOC
//
//  Created by MacBook Pro on 6/4/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = UIColor.orangeColor;
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *rootViewController = [storyboard instantiateInitialViewController];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
