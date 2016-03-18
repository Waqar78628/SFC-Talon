//
//  ImagePreviewViewController.m
//  SFC Talon
//
//  Created by Waqar on 3/18/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import "ImagePreviewViewController.h"

@interface ImagePreviewViewController ()
{
    CGFloat xDis;
    CGFloat yDis;
}

@property (weak, nonatomic) IBOutlet UIImageView  * imageView;
@property (weak, nonatomic) IBOutlet UIScrollView * scrollView;

@end

@implementation ImagePreviewViewController

-(void)viewDidLoad
{
    self.imageView.image = self.image;
    
    UIPinchGestureRecognizer *twoFingerPinch =
    [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingerPinch:)] ;
    [self.view addGestureRecognizer:twoFingerPinch];
    
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    [self.scrollView setShowsVerticalScrollIndicator:NO];
}

#pragma mark - button actions

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)twoFingerPinch:(UIPinchGestureRecognizer *)recognizer
{
    if ([recognizer numberOfTouches] >1)
    {
        //getting width and height between gestureCenter and one finger
        
        float x = [recognizer locationInView:self.imageView].x - [recognizer locationOfTouch:1 inView:self.imageView].x;
        if (x<0)
        {
            x *= -3;
        }
        
        float y = [recognizer locationInView:self.imageView].y - [recognizer locationOfTouch:1 inView:self.imageView].y;
        if (y<0)
        {
            y *= -3;
        }
        
        //set Border
        if (recognizer.state == UIGestureRecognizerStateBegan)
        {
            xDis = self.imageView.bounds.size.width - x*2;
            yDis = self.imageView.bounds.size.height - y*2;
        }
        
        //double size cause x and y is just the way from the middle to one finger
        float width = x*2+xDis;
        if (width < 183)
        {
            width = 183;
        }
        float height = y*2+yDis;
        if (height < 252)
        {
            height = 252;
        }
        
        self.imageView.bounds = CGRectMake(self.imageView.bounds.origin.x , self.imageView.bounds.origin.y , width, height);
        [recognizer setScale:1];
    }
    
    self.scrollView.contentSize = CGSizeMake(self.imageView.frame.size.width, self.imageView.frame.size.height);
}

@end
