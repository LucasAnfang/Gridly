//
//  InitialViewController.m
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import "InitialViewController.h"

@interface InitialViewController ()
@property (weak, nonatomic) IBOutlet UILabel *GridlyLabel;


@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.GridlyLabel.alpha = 0;
    [UIView animateWithDuration:2.0 animations:^{
        self.GridlyLabel.alpha = 1;
    }];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
