//
//  AboutViewController.m
//  SFC Talon
//
//  Created by Waqar on 3/17/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import "AboutViewController.h"

#import "PhilosophyOfSFCViewController.h"
#import "AboutMenuCell.h"


@interface AboutViewController () <UITableViewDelegate>

@property (nonatomic, strong) NSArray *menu ;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AboutViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.menu = [[NSArray alloc] initWithObjects:@"Philosophy of SFC Athletics", @"Athletic Staff", @"About the School", @"Eagle Weather", nil];
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
    return [self.menu count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AboutMenuCell *cell ;
    static NSString * cellIdentifier = @"AboutMenuCell";
    
    cell   = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell   = [[AboutMenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.menuImageView.image = [UIImage imageNamed:@"back.png"];
    cell.menuLabel.text      = [self.menu objectAtIndex:indexPath.row];
    
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle  = UITableViewCellSelectionStyleNone;
    
    if (indexPath.row == 0 || indexPath.row == 2)
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
    return 50.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    if (indexPath.row == 0)
    {
        PhilosophyOfSFCViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"PhilosophyOfSFCViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if (indexPath.row == 1)
    {
    }
    else if (indexPath.row == 2)
    {
    }
    else if(indexPath.row == 3)
    {
    }
}



@end
