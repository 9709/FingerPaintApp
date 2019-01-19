//
//  PalletView.h
//  FingerPaintApp
//
//  Created by Matthew Chan on 2019-01-18.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PalletView : UIView

@property UIColor *color;

- (void)clear;
- (void)changeColor: (UIColor *)selectColor;

@end

NS_ASSUME_NONNULL_END
