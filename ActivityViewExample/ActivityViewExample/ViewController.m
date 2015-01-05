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
        [ActivityView showActivityInView:self.insideView withText:@"Activity View inside View"];
    }
    else
    {
        [ActivityView hideActivity];
    }
}

@end
