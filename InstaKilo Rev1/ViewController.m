//
//  ViewController.m
//  InstaKilo Rev1
//
//  Created by Jose on 12/1/18.
//  Copyright © 2018 Jose. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView* collectionView;
@property (strong, nonatomic) NSArray* imagesArray;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
    UIImage* image0 = [UIImage imageNamed:@"caracol"];
    UIImage* image1 = [UIImage imageNamed:@"cat"];
    UIImage* image2 = [UIImage imageNamed:@"elephant"];
    UIImage* image3 = [UIImage imageNamed:@"falcon"];
    UIImage* image4 = [UIImage imageNamed:@"giraffe"];
    UIImage* image5 = [UIImage imageNamed:@"hippo"];
    UIImage* image6 = [UIImage imageNamed:@"leopard"];
    UIImage* image7 = [UIImage imageNamed:@"owl"];
    UIImage* image8 = [UIImage imageNamed:@"parrot"];
    UIImage* image9 = [UIImage imageNamed:@"wolverine"];
    
    self.imagesArray = @[image0,image1,image2,image3,image4,
                         image5,image6,image7,image8,image9];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Data Source

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (__kindof UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //cell.backgroundColor = [UIColor groupTableViewBackgroundColor];;
    CustomCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    if (indexPath.section == 0)
    {
        [cell setImage:self.imagesArray[indexPath.item]];
        return cell;
    }
    
    else
    {
        [cell setImage:self.imagesArray[indexPath.item+5]];
        return cell;
    }
}

#pragma mark - Flow Layout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat picDimension = self.collectionView.frame.size.width / 4.0f;
    return CGSizeMake(picDimension, picDimension);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(self.collectionView.frame.size.width, 40);
}

/*- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    CGFloat leftRightInset = self.view.frame.size.width / 14.0f;
    return UIEdgeInsetsMake(0, leftRightInset, 0, leftRightInset);
}*/

@end
