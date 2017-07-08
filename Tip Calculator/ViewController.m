//
//  ViewController.m
//  Tip Calculator
//
//  Created by Alex Wymer  on 2017-07-08.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTF;
@property (weak, nonatomic) IBOutlet UITextField *tipAmountTF;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountL;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;


@property (strong, nonatomic) IBOutletCollection(id) NSArray *uiCollection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.tipAmountL.text = @"Tip Amount";
    [self uiLookingSexy];
}

- (IBAction)calculateTapped:(UIButton *)sender {
    
    float billAmount = self.billAmountTF.text.floatValue;
    float tipAmount;
    
    if (self.tipAmountTF.text.floatValue) {
        
        tipAmount = billAmount * self.tipAmountTF.text.floatValue;
        
    } else {
        
        tipAmount = billAmount * 0.15;

    }
    
    NSString *tip = [NSString stringWithFormat:@"Tip: %0.2f", tipAmount];
    
    self.tipAmountL.text = tip;
}


-(void)uiLookingSexy {
    
    for (UITextView *field in self.uiCollection) {
        field.layer.borderColor = [UIColor blackColor].CGColor;
        field.layer.borderWidth = 3.0;
        field.layer.cornerRadius = 10.0;
    }
    
    for (UILabel *label in self.uiCollection) {
        label.layer.borderColor = [UIColor blackColor].CGColor;
        label.layer.borderWidth = 3.0;
        label.layer.cornerRadius = 10.0;
        [label setClipsToBounds:YES];
    }
    
    for (UIButton *button in self.uiCollection) {
        button.layer.borderColor = [UIColor blackColor].CGColor;
        button.layer.borderWidth = 3.0;
        button.layer.cornerRadius = 10.0;
    }
}

@end
