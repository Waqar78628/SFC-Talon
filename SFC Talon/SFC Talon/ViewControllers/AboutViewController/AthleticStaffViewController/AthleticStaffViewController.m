//
//  AthleticStaffViewController.m
//  SFC Talon
//
//  Created by Waqar on 3/21/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import "AthleticStaffViewController.h"
#import "AthleticStaffCell.h"

@interface AthleticStaffViewController ()

@property (nonatomic, strong) NSArray *staff ;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AthleticStaffViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.staff = [[NSArray alloc] initWithObjects:@"Chad Bickley - Athletic Director", @"Robbie Roberts - Assistant Athletic Director", @"Leslie Easterling - Administrative Assistant Athletics", @"Ben Jamson - Sports Information Coordinator", @"Nick Farrell - Strength and Conditioning Coach", @"Kristal Peterson - Athletic Trainer", nil];
    
    NSLog(@"Staff %@",self.staff);
}

#pragma mark - button actions

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - tableview datasource methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.staff count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AthleticStaffCell *cell ;
    static NSString * cellIdentifier = @"AthleticStaffCell";
    
    cell   = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell   = [[AthleticStaffCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.profileImageView.image        = [UIImage imageNamed:@"back.png"];
    cell.nameAndDesignationLabel.text  = [self.staff objectAtIndex:indexPath.row];
    
    NSLog(@"cell : %@",cell.nameAndDesignationLabel.text);
    
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle  = UITableViewCellSelectionStyleNone;
    
    if ( (indexPath.row % 2) == 0)
    {
        cell.cellViewsContainer.backgroundColor = [UIColor colorWithRed:0.71 green:0.76 blue:0.71 alpha:0.3];
    }
    else
    {
        cell.cellViewsContainer.backgroundColor = [UIColor colorWithRed:0.19 green:0.13 blue:0.18 alpha:0.5];
    }
    
    return cell;
}

#pragma mark - tableview delegate methods

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    if (indexPath.row == 0)
    {
    }
}

@end
