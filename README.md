ActivityView
============
ActivityView is a clean and easy-to-use HUD/Activity Indicator meant to indicate activity of an ongoing task.

How To Use
---------------------
### Show Activity
If there is no need to show multiple ActivityView simultaneously its easier to use as shown below

[ActivityView showActivityInView:someView withText:@"Some Text"]; 

If multiple Activity views are to be displayed simultaneously create any number of instances of the Class and the same methods can be invoked.

### Hide Activity
[ActivityView hideActivity];

### Style Methods
- (void)setBackgroundColour:(UIColor *)colour; //Sets Background Colour of ActivityView
- (void)setFont:(UIFont *)font;                //Sets Font for text in ActivityView
- (void)setTextColour:(UIColor *)fontColour    //Sets text colour;
- (void)setActivityIndicatorColour:(UIColor *)colour; //Sets colour of Activity Indicator, the animated cogwheel
