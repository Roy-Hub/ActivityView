//
//  ActivityView.h
//  VideoPlayer
//
//  Created by Roy on 12/12/14.
//  Copyright (c) 2014 InApp Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityView : UIView

+(void)showActivityInView:(UIView *)view withText:(NSString *)string;
-(void)showActivityInView:(UIView *)view withText:(NSString *)string;

+(void)hideActivity;
-(void)hideActivity;

+(void)setBackgroundColour:(UIColor *)colour;

+(void)setFont:(UIFont *)font;
-(void)setFont:(UIFont *)font;

+(void)setTextColour:(UIColor *)fontColour;
-(void)setTextColour:(UIColor *)fontColour;

+(BOOL)isVisible;
-(BOOL)isVisible;

@end
