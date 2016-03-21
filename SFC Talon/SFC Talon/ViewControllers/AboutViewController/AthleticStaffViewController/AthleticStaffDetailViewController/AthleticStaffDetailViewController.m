//
//  AthleticStaffDetailViewController.m
//  SFC Talon
//
//  Created by Waqar on 3/21/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import "AthleticStaffDetailViewController.h"

@interface AthleticStaffDetailViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView * scrollView;
@property (weak, nonatomic) IBOutlet UILabel      * nameAndDesignationLabel;
@property (weak, nonatomic) IBOutlet UIImageView  * profileImageView;

@end

@implementation AthleticStaffDetailViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - button actions

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
