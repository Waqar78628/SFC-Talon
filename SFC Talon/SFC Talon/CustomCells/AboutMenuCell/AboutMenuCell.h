//
//  AboutMenuCell.h
//  SFC Talon
//
//  Created by Waqar on 3/17/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutMenuCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView      * cellViewsContainer;
@property (weak, nonatomic) IBOutlet UIImageView * menuImageView;
@property (weak, nonatomic) IBOutlet UILabel     * menuLabel;

@end
