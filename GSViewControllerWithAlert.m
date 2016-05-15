//
//  GSCustomAlertWithTextField.m
//  GSAlertcontrollerWithTextBox
//
//  Created by Gowri Sammandhamoorthy on 3/7/15.
//  Copyright © 2015 Gowri Sammandhamoorthy. All rights reserved.
//

#import "GSViewControllerWithAlert.h"


@interface GSViewControllerWithAlert ()

@end

@implementation GSViewControllerWithAlert{
    UIAlertController* alert;
    NSMutableArray* arrayOfData;
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}

#pragma mark - Alert Style Alert.
-(void)createAlertStyleAlert{
    alert = [UIAlertController alertControllerWithTitle:@"Some Title" message:@"Enter your message here" preferredStyle:UIAlertControllerStyleAlert];
    [alert.view setNeedsLayout];
    
    UIAlertAction* OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action){
        NSLog(@"Ok Button Pressed");
    }];
    
    UIAlertAction* Cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction* action){
        NSLog(@"Cancel Button Pressed");
    }];
    
    [alert addAction:Cancel];
    [alert addAction:OK];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self presentViewController:alert animated:YES completion:nil];
    });
    
}

#pragma mark - Alert with textField.
-(void)alertStyleAlertWithTextField{
    alert = [UIAlertController alertControllerWithTitle:@"Contact Details" message:nil preferredStyle:UIAlertControllerStyleAlert];
    [alert.view setNeedsLayout];
    UIAlertAction* OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action){
        NSLog(@"Ok Button Pressed");
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField* textField){
        textField.placeholder = NSLocalizedString(@"Enter Your Name", nil);
        textField.keyboardType = UIKeyboardTypeDefault;
        
    }];
    
    [alert addAction:OK];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self presentViewController:alert animated:YES completion:nil];
    });

}

#pragma mark - Alert sheet style alert.
-(void)actiionSheetAlertButtonPressed{
    alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [alert.view setNeedsLayout];
    
    UIAlertAction* add = [UIAlertAction actionWithTitle:@"ADD" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action){
        NSLog(@"Add Button Pressed");
    }];
    UIAlertAction* delete = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action){
        NSLog(@"Delete Button Pressed");
    }];

    UIAlertAction* Cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction* action){
        NSLog(@"Cancel Button Pressed");
    }];

    [alert addAction:add];
    [alert addAction:delete];
    [alert addAction:Cancel];

    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self presentViewController:alert animated:YES completion:nil];
    });
    

}



#pragma amrk - Action Buttons.

- (IBAction)alertStyleAlertButtonPressed:(id)sender {
    [self createAlertStyleAlert];
}

- (IBAction)alertStyleAlertWithTextField:(id)sender {
    [self alertStyleAlertWithTextField];
    
}

- (IBAction)actiionSheetAlertButtonPressed:(id)sender {
    [self actiionSheetAlertButtonPressed];
}

- (IBAction)exitBarButtonPressed:(id)sender {
    exit(0);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
