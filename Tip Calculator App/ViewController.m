//
//  ViewController.m
//  Tip Calculator App
//
//  Created by Jamie on 2018-08-10.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.billAmountTextField.keyboardType = UIKeyboardTypeDefault;
    self.tipPercentageTextField.keyboardType = UIKeyboardTypeDefault;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(id)sender {
    [self.billAmountTextField resignFirstResponder];
    [self.tipPercentageTextField resignFirstResponder];
    float billAmount = [self.billAmountTextField.text intValue];
    float percentTip = [self.tipPercentageTextField.text intValue];
    float tipAmount = billAmount * (percentTip/100);
    float totalAmount = billAmount + tipAmount;
    NSString *tipString = [NSString stringWithFormat:@"$%.02f", tipAmount];
    self.tipAmountLabel.text =  tipString;
    NSString *totalString = [NSString stringWithFormat:@"$%.02f", totalAmount];
    self.totalAmountLabel.text = totalString;
   

//    self.tipAmountLabel.text intFro = self.billAmountTextField.text * self.tipPercentageTextField
}




@end
