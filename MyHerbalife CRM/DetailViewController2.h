//
//  DetailViewController2.h
//  MyHerbalife CRM
//
//  Created by luis cabarique on 12/28/13.
//  Copyright (c) 2013 Luis Cabarique. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface DetailViewController2 : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property(nonatomic, weak) IBOutlet UIToolbar *toolbar;
@property(nonatomic, weak) IBOutlet UIBarButtonItem *shareButton;

- (IBAction)shareButtonTapped:(id)sender;

@end
