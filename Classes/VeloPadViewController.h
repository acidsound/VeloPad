//
//  VeloPadViewController.h
//  VeloPad
//
//  Created by JAE HO LEE on 11. 5. 18..
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VeloPadViewController : UIViewController <UIAccelerometerDelegate>{
	UIAccelerometer *accelorometer;
	BOOL touch;
	double prevAccel;
	double minAccelX;
	double maxAccelX;
}

@property (nonatomic, retain) UIAccelerometer *accelerometer;
@end

