//
//  LineSegmentDataModel.h
//  FingerPaintApp
//
//  Created by Matthew Chan on 2019-01-18.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@import UIKit;

@interface LineSegmentDataModel : NSObject


@property (nonatomic, readonly) CGPoint firstPoint;
@property (nonatomic, readonly) CGPoint secondPoint;

- (instancetype)initWithFirstPoint:(CGPoint)first
                       secondPoint:(CGPoint)second;


@end

NS_ASSUME_NONNULL_END
