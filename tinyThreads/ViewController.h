//
//  ViewController.h
//  tinyThreads
//
//  Created by Omkar on 05/03/13.
//  Copyright (c) 2013 Omkar Nisal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <dispatch/dispatch.h>

@interface ViewController : UIViewController
@property (unsafe_unretained, nonatomic) IBOutlet UISlider *mySlider;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)myKaroButton:(id)sender;

- (IBAction)hangButton:(id)sender;
@end
