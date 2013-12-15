//
//  DetailViewController.h
//  MyHerbalife CRM
//
//  Created by luis cabarique on 12/15/13.
//  Copyright (c) 2013 Luis Cabarique. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
