//
//  VeloPadViewController.m
//  VeloPad
//
//  Created by JAE HO LEE on 11. 5. 18..
//  Copyright 2011 none. All rights reserved.
//

#import "VeloPadViewController.h"

@implementation VeloPadViewController
@synthesize accelerometer;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void)viewDidLoad {
    [super viewDidLoad];
	self.accelerometer = [UIAccelerometer sharedAccelerometer];
	self.accelerometer.updateInterval = 1.0f/60.0f;
	self.accelerometer.delegate = self;
	self.view.multipleTouchEnabled = YES;
	minAccelX = 0;
	maxAccelX = 0;
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	touch = YES;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	touch = NO;
	NSLog(@"%f", maxAccelX - minAccelX );
	minAccelX = 0;
	maxAccelX = 0;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    // Get the current device angle
	if (touch) {
//		NSLog(@"%d / %d:%d:%d", prevAccel, [acceleration x], [acceleration y], [acceleration z]);
		double accel = [acceleration y];
		minAccelX = accel<minAccelX ? accel : minAccelX;
		maxAccelX = accel>maxAccelX ? accel : maxAccelX;
//		NSLog(@"%f/%f : %f", minAccelX, maxAccelX, accel);
	}
	
	prevAccel = [acceleration x];
}

- (void)dealloc {
    [super dealloc];
}

@end
