//
//  FISAddShipViewController.m
//  OpenMe
//
//  Created by Chris Gonzales on 9/17/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAddShipViewController.h"
#import "FISPiratesDataStore.h"

@interface FISAddShipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *shipNameField;
@property (weak, nonatomic) IBOutlet UITextField *engineTypeField;
@property (strong, nonatomic) NSDictionary *shipInfo;

@end

@implementation FISAddShipViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

//-(NSDictionary *)shipInfo {
//    
//    return _shipInfo;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender {
    
    [self saveNotificationWithShipDictionary:@{@"entity": @"ship", @"content": @{@"pirate": self.pirate, @"shipName": self.shipNameField.text, @"engineType": self.engineTypeField.text}}];

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)saveNotificationWithShipDictionary:(NSDictionary *)shipDictionary {
    
        [[NSNotificationCenter defaultCenter] postNotificationName:DataStoreSaveNotification object:nil userInfo:shipDictionary];
    
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
