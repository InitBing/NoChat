//
//  NOCChatCollectionView.m
//  NoChat-Example
//
//  Created by little2s on 2016/12/24.
//  Copyright © 2016年 little2s. All rights reserved.
//

#import "NOCChatCollectionView.h"

@interface NOCChatCollectionView ()

@end

@implementation NOCChatCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.showsVerticalScrollIndicator = YES;
        self.showsHorizontalScrollIndicator = NO;
        self.scrollsToTop = NO;
        self.alwaysBounceVertical = YES;
        self.exclusiveTouch = YES;
        self.delaysContentTouches = NO;
    }
    return self;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    if (self.tapAction) {
        self.tapAction();
    }
}

@end
