//
//  LineSegmentDataModel.m
//  FingerPaintApp
//
//  Created by Matthew Chan on 2019-01-18.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "LineSegmentDataModel.h"

@implementation LineSegmentDataModel


- (instancetype)initWithFirstPoint:(CGPoint)first
                       secondPoint:(CGPoint)second
{
    if (self = [super init]) {
        _firstPoint = first;
        _secondPoint = second;
    }
    return self;
}

@end
