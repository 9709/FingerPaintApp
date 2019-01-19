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

- (IBAction)redButton:(UIButton *)sender {
    [self.palletView changeColor:[UIColor redColor]];
    NSLog(@"red pressed");
}

- (IBAction)greenButton:(UIButton *)sender {
    [self.palletView changeColor:[UIColor greenColor]];
}

- (IBAction)blackButton:(id)sender {
    [self.palletView changeColor:[UIColor blackColor]];
}

- (IBAction)eraseButton:(id)sender {
    [self.palletView changeColor:[UIColor whiteColor]];
}



@end
