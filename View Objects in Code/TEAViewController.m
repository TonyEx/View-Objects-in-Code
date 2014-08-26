//
//  TEAViewController.m
//  View Objects in Code
//
//  Created by Tony Angelo on 8/25/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"

@interface TEAViewController ()

@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	CGRect myLabelFrame = CGRectMake(20, 60, 280, 22);
	self.myLabel = [[UILabel alloc] initWithFrame:myLabelFrame];
	
	self.myLabel.text = @"Default Name";
	self.myLabel.textColor = [UIColor darkGrayColor];
	
	[self.view addSubview:self.myLabel];
	
	CGRect myTextFrame = CGRectMake(20, 110, 280, 30);
	self.myTextField = [[UITextField alloc] initWithFrame:myTextFrame];
	
	self.myTextField.text = @"Placeholder text";
	self.myTextField.backgroundColor = [UIColor yellowColor];
	
	[self.view addSubview:self.myTextField];
	
	CGRect myButtonFrame = CGRectMake(20, 160, 280, 30);
	self.myButton = [UIButton buttonWithType:UIButtonTypeSystem];
	
	self.myButton.frame = myButtonFrame;
	[self.myButton setTitle:@"press me!" forState:UIControlStateNormal];
	[self.myButton addTarget:self action:@selector(myButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
	
	[self.view addSubview:self.myButton];
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) myButtonPressed:(UIButton *)button
{
	self.myLabel.text = self.myTextField.text;
	

}


@end
