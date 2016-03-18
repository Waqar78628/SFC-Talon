//
//  PhilosophyOfSFCViewController.m
//  SFC Talon
//
//  Created by Waqar on 3/18/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import "PhilosophyOfSFCViewController.h"
#import "ImagePreviewViewController.h"


@interface PhilosophyOfSFCViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (retain, nonatomic) UILabel * heading;
@property (retain, nonatomic) UILabel * paragraph;

@property (strong,nonatomic) UIImageView *imageView;

@end

@implementation PhilosophyOfSFCViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setContentsInScrollView];
}

#pragma mark - button actions

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)setContentsInScrollView
{
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    [self.scrollView setShowsVerticalScrollIndicator:NO];
    
    CGRect screenRect = [self getScreenFrameForCurrentOrientation];
    CGFloat screenWidth = screenRect.size.width;
    
    for (int i=0; i<4; i++)
    {
        UIView *textContainer  = [[UIView alloc] init];
        textContainer.backgroundColor = [UIColor colorWithRed:0.19 green:0.13 blue:0.18 alpha:0.5];
        
        _heading   = [[UILabel alloc] init];
        _paragraph = [[UILabel alloc] init];
        
        [_heading setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:24]];
        [_paragraph setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        
        _heading.textAlignment      = NSTextAlignmentCenter;
        _heading.backgroundColor    = [UIColor clearColor];
        _heading.textColor          = [UIColor lightGrayColor];
        _paragraph.textAlignment    = NSTextAlignmentCenter;
        _paragraph.backgroundColor  = [UIColor clearColor];
        _paragraph.textColor        = [UIColor darkGrayColor];
    
        NSString                     * labelHeadingText;
        NSString                     * labelParagraphText;
        NSMutableAttributedString    * attributedString1;
        NSMutableAttributedString    * attributedString2;
        
        if (i==0)
        {
            textContainer.frame = CGRectMake(0, 115, screenWidth,110);
            _heading.frame   = CGRectMake(0 , 0, screenWidth, 27);
            _paragraph.frame = CGRectMake(0 , 28, screenWidth, 80);
            _heading.numberOfLines   = 1;
            _paragraph.numberOfLines = 4;
            
            labelHeadingText    = @"Be a Champion for Christ";
            labelParagraphText  = @"\"May I never boast except in the cross of our\n Jesus, through which the world\n has been crucified to me, and I to the world.\"\n GALATIONS 6:14";

            attributedString1 = [[NSMutableAttributedString alloc] initWithString:labelHeadingText];
            [attributedString1 addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 13)];
            [_heading setAttributedText:attributedString1];
            [textContainer addSubview:_heading];
            
            attributedString2 = [[NSMutableAttributedString alloc] initWithString:labelParagraphText];
            [attributedString2 addAttribute:NSForegroundColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(0, 125)];
            [_paragraph setAttributedText:attributedString2];
            [textContainer addSubview:_paragraph];
        }
        else if(i==1)
        {
            textContainer.frame = CGRectMake(0, 245, screenWidth,124);
            _heading.frame   = CGRectMake(0 , 0, screenWidth, 58);
            _paragraph.frame = CGRectMake(0 , 58, screenWidth, 65);
            _heading.numberOfLines   = 2;
            _paragraph.numberOfLines = 3;
            
            labelHeadingText    = @"Be a Champion in\n Relationsips";
            labelParagraphText  = @"\"Be kind and compassionate to one another,\n forgiving each other, just as in God\n forgave you.\" EPHESIANS 4:32" ;
            
            attributedString1 = [[NSMutableAttributedString alloc] initWithString:labelHeadingText];
            [attributedString1 addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 13)];
            [_heading setAttributedText:attributedString1];
            [textContainer addSubview:_heading];
            
            attributedString2 = [[NSMutableAttributedString alloc] initWithString:labelParagraphText];
            [attributedString2 addAttribute:NSForegroundColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(0, 96)];
            [_paragraph setAttributedText:attributedString2];
            [textContainer addSubview:_paragraph];
        }
        else if(i==2)
        {
            textContainer.frame = CGRectMake(0, 390, screenWidth,100);
            _heading.frame   = CGRectMake(0 , 0, screenWidth, 58);
            _paragraph.frame = CGRectMake(0 , 58, screenWidth, 50);
            _heading.numberOfLines   = 2;
            _paragraph.numberOfLines = 2;
            
            labelHeadingText    = @"Be a Champion on the\n Field";
            labelParagraphText  = @"\"I can do all this through Him who gives me\n strength.\" PHILIPPIANS 4:13" ;
            
            attributedString1 = [[NSMutableAttributedString alloc] initWithString:labelHeadingText];
            [attributedString1 addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 13)];
            [_heading setAttributedText:attributedString1];
            [textContainer addSubview:_heading];
            
            attributedString2 = [[NSMutableAttributedString alloc] initWithString:labelParagraphText];
            [attributedString2 addAttribute:NSForegroundColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(0, 56)];
            [_paragraph setAttributedText:attributedString2];
            [textContainer addSubview:_paragraph];
        }
        else
        {
            textContainer.frame = CGRectMake(0, 508, screenWidth,70);
            _paragraph.frame = CGRectMake(0 , 0, screenWidth, 65);
            _paragraph.numberOfLines = 3;
            
            labelParagraphText  = @"\"I press on toward the goal to win the prize for which God has called me heavenward in Jesus.\" PHILIPPIANS 3:14" ;
            
            attributedString2 = [[NSMutableAttributedString alloc] initWithString:labelParagraphText];
            [attributedString2 addAttribute:NSForegroundColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(0, 94)];
            [_paragraph setAttributedText:attributedString2];
            [textContainer addSubview:_paragraph];
        }
        
        [self.scrollView addSubview:textContainer];
    }
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 95)];
    imageview.center = CGPointMake(self.scrollView.frame.size.width  / 2, 630);
    [imageview setImage:[UIImage imageNamed:@"logo.png"]];
    [imageview setUserInteractionEnabled:YES];
    UITapGestureRecognizer *singleTap =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [singleTap setNumberOfTapsRequired:1];
    [imageview addGestureRecognizer:singleTap];
    self.imageView = imageview;
    [self.scrollView addSubview:imageview];
    
    self.scrollView.contentSize =  CGSizeMake(self.scrollView.frame.size.width,  694) ;
}

#pragma mark - helper methods

- (CGRect)getScreenFrameForCurrentOrientation
{
    return [self getScreenFrameForOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)getScreenFrameForOrientation:(UIInterfaceOrientation)orientation
{
    CGRect fullScreenRect = [[UIScreen mainScreen] bounds];
    
    if (UIInterfaceOrientationIsLandscape(orientation))
    {
        CGRect temp = CGRectZero;
        temp.size.width = fullScreenRect.size.height;
        temp.size.height = fullScreenRect.size.width;
        fullScreenRect = temp;
    }
    if (! [UIApplication sharedApplication].statusBarHidden )
    {
        CGFloat statusBarHeight = 20;
        fullScreenRect.size.height -= statusBarHeight;
    }
    
    return fullScreenRect;
}

-(void)imageTapped:(UIGestureRecognizer *)recognizer
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ImagePreviewViewController *ipvc = [storyboard instantiateViewControllerWithIdentifier:@"ImagePreviewViewController"];
    ipvc.image = self.imageView.image;
    [self.navigationController pushViewController:ipvc animated:YES];
}


@end
