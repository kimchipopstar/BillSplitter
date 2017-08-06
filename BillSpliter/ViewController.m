//
//  ViewController.m
//  BillSpliter
//
//  Created by Jaewon Kim on 2017-08-06.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;

 @property (weak, nonatomic) IBOutlet UILabel *calculatedLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)splitBillButton:(UIButton *)sender {
    
    NSDecimalNumber *billAmount = [NSDecimalNumber decimalNumberWithString:self.billAmountTextField.text];
    float calculateAmount  = [billAmount floatValue] / self.numberOfPeopleSlider.value;
    self.calculatedLabel.text = [NSString stringWithFormat:@"split bill for %.0f is $%.2f",self.numberOfPeopleSlider.value ,calculateAmount];

    [self.view endEditing:YES];
    
}
- (IBAction)roundUp:(UISlider *)sender {
    self.numberOfPeopleSlider.value = roundf(self.numberOfPeopleSlider.value);
}


@end
