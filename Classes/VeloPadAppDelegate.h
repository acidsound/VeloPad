//
//  VeloPadAppDelegate.h
//  VeloPad
//
//  Created by JAE HO LEE on 11. 5. 18..
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VeloPadViewController;

@interface VeloPadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    VeloPadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet VeloPadViewController *viewController;

@end

