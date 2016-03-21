//
//  AthleticStaffCell.h
//  SFC Talon
//
//  Created by Waqar on 3/21/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AthleticStaffCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView      * cellViewsContainer;
@property (weak, nonatomic) IBOutlet UIImageView * profileImageView;
@property (weak, nonatomic) IBOutlet UILabel     * nameAndDesignationLabel;

@end
