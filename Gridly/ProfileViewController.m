//
//  ProfileViewController.m
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UILabel *EmailLabel;
@property (weak, nonatomic) IBOutlet UILabel *UsernameLabel;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.EmailLabel.text = [NSString stringWithFormat: @"Email: %@ ", [[[FIRAuth auth] currentUser] email]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)LogoutButtonPressed:(id)sender {
    //Firebase logout using authenticator
    NSError *signOutError;
    BOOL status = [[FIRAuth auth] signOut:&signOutError];
    if (!status) {
        NSLog(@"Error signing out: %@", signOutError);
        //display logout error
        [self DisplayErrorInMessage:@"Sign Out Error"];
        return;
    }
    //segue back to initial view
    [self performSegueWithIdentifier: @"UserProfileToInitial" sender:nil];
    
}
-(void)DisplayErrorInMessage:(NSString*)message{
    //alert if there is an error
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"Invalid Signout"
                                          message:message
                                          preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:@"Ok"
                               style:UIAlertActionStyleCancel
                               handler:^(UIAlertAction *action) { /* nothing */ }];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
