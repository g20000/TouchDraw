//
//  ViewController.m
//  TouchDraw
//
//  Created by User on 14.12.13.
//  Copyright (c) 2013 User. All rights reserved.
//

#import "GalleryCell.h"
#import "GalleryViewController.h"

static NSString * const KSequeWorkspace = @"goToWorkspace";

@interface GalleryViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionDrawings;

@end

@implementation GalleryViewController

#pragma mark - view live cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *pictures = @[@"bg-gallery-image1.png", @"bg-gallery-image2.png", @"image-add-new-image.png"];
    NSString *uniqPicture = pictures[indexPath.row];
    GalleryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Image" forIndexPath:indexPath];
    cell.imagePreview.image = [UIImage imageNamed:uniqPicture];
    return cell;
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:(KSequeWorkspace) sender:self];
}

@end
