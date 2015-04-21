//
//  ViewController.m
//  iOS_Study
//
//  Created by xiongming on 2015/4/21.
//  Copyright (c) 2015年 xiongming. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSString *s = @"凌波微步";
    UIFont *font = [UIFont fontWithName:@"Arial" size:50.0f];
    CGSize size = CGSizeMake(320, 2000);
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectZero];
    [label2 setNumberOfLines:0];
    CGSize labelsize = [s sizeWithFont:font
                     constrainedToSize:size
                         lineBreakMode:UILineBreakModeWordWrap];
    label2.frame = CGRectMake(0, 0, labelsize.width, labelsize.height);
    label2.textColor = [UIColor blackColor];
    label2.font = font;
    label2.text = s;
    [self.view addSubview:label2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) buttenClick:(id)sender
{
    NSLog(@"按钮被拳击!");
    
    UIButton *button = (UIButton*)sender;
    NSString *title = [NSString stringWithFormat:@"tag %d", button.tag];
    NSString *message = [button currentTitle];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
