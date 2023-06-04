//
//  ViewController.m
//  HelloOC
//
//  Created by MacBook Pro on 6/4/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = UIColor.blueColor;
    [self.view addSubview:redView];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"test"]];
    imageView.frame = CGRectMake(100, 300, 100, 50);
    [self.view addSubview:imageView];
}


@end
