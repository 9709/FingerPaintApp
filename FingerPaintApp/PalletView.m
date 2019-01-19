//
//  PalletView.m
//  FingerPaintApp
//
//  Created by Matthew Chan on 2019-01-18.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "PalletView.h"
#import "LineSegmentDataModel.h"

@interface PalletView()

@property (nonatomic) NSMutableArray<LineSegmentDataModel *> *arrayOfPointers;


@end

//====================================================================================================


@implementation PalletView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        _arrayOfPointers = [NSMutableArray new];
    }
    return self;
}

//===================================Touches Begins===============================================

- (void)touchesBegan:(NSSet < UITouch *> *)touches
           withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView: self];
    
    LineSegmentDataModel *segment = [[LineSegmentDataModel alloc] initWithFirstPoint:first
                                                                         secondPoint:first];
    [self.arrayOfPointers addObject: segment];
    
    [self setNeedsDisplay];
}

//===================================Touches Moved===============================================

- (void)touchesMoved:(NSSet<UITouch *> *)touches
           withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint second = [touch locationInView:self];               // current touch location
    CGPoint first = [touch previousLocationInView:self];        // previous touch location
    
    LineSegmentDataModel *segment = [[LineSegmentDataModel alloc] initWithFirstPoint:first
                                                                         secondPoint:second];
    
    [self.arrayOfPointers addObject: segment];
    
    [self setNeedsDisplay];
}

//===================================DrawRect (drawing the line)===============================================

- (void)drawRect:(CGRect)rect {
    UIBezierPath *drawPath = [UIBezierPath bezierPath];
    drawPath.lineWidth = 5.0;
    drawPath.lineCapStyle = kCGLineCapRound;
    [self.color setStroke];
    
    // loop through all elelcments in the segment array and draw each line
    for (LineSegmentDataModel *segment in self.arrayOfPointers) {
        if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint)) {
            [drawPath moveToPoint:segment.firstPoint];
            continue;
            
        }
        [drawPath addLineToPoint:segment.firstPoint];
        [drawPath addLineToPoint:segment.secondPoint];
    }
    [drawPath stroke];
}

//===================================Clear page method===============================================

- (void)clear
{
    [self.arrayOfPointers removeAllObjects];
    [self setNeedsDisplay];
}


@end
