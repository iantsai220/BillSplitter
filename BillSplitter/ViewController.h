//
//  ViewController.h
//  BillSplitter
//
//  Created by Ian Tsai on 2015-05-16.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *billAmount;

@property (weak, nonatomic) IBOutlet UISlider *splitSlider;

@property (weak, nonatomic) IBOutlet UILabel *numberDisplayLabel;

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@property (weak, nonatomic) IBOutlet UIButton *calculateButton;




@end

