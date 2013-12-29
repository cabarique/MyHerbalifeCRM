//
//  ExpTabBarController.m
//  testMD-bare
//
//  Created by Stephen Moraco on 12/04/24.
//  Copyright (c) 2012 Iron Sheep Productions, LLC. All rights reserved.
//

#import "ExpTabBarController.h"

@interface ExpTabBarController () {
    
}

@property (strong, nonatomic) UIPopoverController *masterPopoverController;

@end

@implementation ExpTabBarController

@synthesize masterPopoverController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    // NOTE: this is only invoked on iPad!
    //  pass this method call to all TABs (below their Navigation controller)
    for (UINavigationController *currNC in self.viewControllers) {
        id<UISplitViewControllerDelegate> currVC = (id)currNC.topViewController;
        [currVC splitViewController:splitController willHideViewController:viewController withBarButtonItem:barButtonItem forPopoverController:popoverController];
    }
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // NOTE: this is only invoked on iPad!
    //  pass this method call to all TABs (below their Navigation controller)
    for (UINavigationController *currNC in self.viewControllers) {
        id<UISplitViewControllerDelegate> currVC = (id)currNC.topViewController;
        [currVC splitViewController:splitController willShowViewController:viewController invalidatingBarButtonItem:barButtonItem];
    }
}
@end
