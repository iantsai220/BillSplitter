//
//  ViewController.m
//  BillSplitter
//
//  Created by Ian Tsai on 2015-05-16.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.billAmount.delegate = self;
    
    [self.calculateButton addTarget:self action:@selector(calculateSplitAmount:) forControlEvents:UIControlEventTouchUpInside];
    [self.splitSlider addTarget:self action:@selector(numberOfPeople:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)numberOfPeople:(id)sender {
    
    self.numberDisplayLabel.text = [NSString stringWithFormat:@"%.0f", self.splitSlider.value];
    [self.billAmount resignFirstResponder];
}

- (IBAction)calculateSplitAmount:(id)sender{
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc]init];
    numberFormatter.generatesDecimalNumbers = YES;
    
    NSDecimalNumber *billAmount = [NSDecimalNumber decimalNumberWithString:self.billAmount.text];
    NSNumber *numberOfPeople = [numberFormatter numberFromString:self.numberDisplayLabel.text];
    
    float splitAmount = [billAmount floatValue] / [numberOfPeople intValue];
    
    self.displayLabel.text = [NSString stringWithFormat:@"$ %.2f", splitAmount];
    
    [self.billAmount resignFirstResponder];
    
    
}



@end
