//
//  CustomCell.m
//  InstaKilo Rev1
//
//  Created by Jose on 12/1/18.
//  Copyright © 2018 Jose. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCell ()
@property (weak, nonatomic) IBOutlet UIImageView* cellImageView;
@end

@implementation CustomCell

-(void) setImage:(UIImage*)image
{
    self.cellImageView.image = image;
}

@end
