//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Matthew Chan on 2019-01-18.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ViewController.h"
#import "LineSegmentDataModel.h"
#import "PalletView.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet PalletView *palletView;

@end




@implementation ViewController

- (IBAction)clear {
    [self.palletView clear];
}

@end
