//
//  ViewController.m
//  ActivityViewExample
//
//  Created by Roy on 05/01/15.
//  Copyright (c) 2015 InApp. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *insideView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor *)colourWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
    CGFloat base = 255.0;
    return [UIColor colorWithRed:red/base
                           green:green/base
                            blue:blue/base
                           alpha:alpha];
}

- (IBAction)showActivityToggled:(UISwitch *)sender
{
    if(sender.on)
    {
        /**
         *  If there is a need to show multile activities, create instaces of ActivityView and use it.
         *  Like
         *  ActivityView *activity = [[ActivityView alloc]init];
         *  [activity showActivityInView:self.insideView withText:@""];
         */
        [ActivityView setBackgroundColour:[self colourWithRed:255 green:170 blue:135 alpha:0.9]];
        [ActivityView setTextColour:[self colourWithRed:0 green:105 blue:215 alpha:1.0]];
        [ActivityView setActivityIndicatorColour:[self colourWithRed:175 green:0 blue:155 alpha:1.0]];
        
        [ActivityView setBorderColour:[self colourWithRed:255 green:255 blue:155 alpha:1.0]];
        
        [ActivityView showActivityInView:self.insideView withText:@"Activity View inside View"];
    }
    else
    {
        [ActivityView hideActivity];
    }
}

@end
