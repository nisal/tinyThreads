//
//  ViewController.m
//  tinyThreads
//
//  Created by Omkar on 05/03/13.
//  Copyright (c) 2013 Omkar Nisal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    dispatch_queue_t queue;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setMySlider:nil];
    [self setMyLabel:nil];
    [super viewDidUnload];
}
- (IBAction)myKaroButton:(id)sender {
    
//    self.myLabel.text = @"Sleeping";
//    sleep(7);
//    self.myLabel.text = @"Awake";
    queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
 
        dispatch_async(dispatch_get_main_queue(), ^{
        
            self.myLabel.text = @"Sleeping";
            
        });
        sleep(7);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.myLabel.text = @"WAKEY!";
        }); 
        
    });
}
@end
