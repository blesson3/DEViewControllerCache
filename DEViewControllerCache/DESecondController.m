//
//  DESecondController.m
//  DEViewControllerCache
//
//  Created by Jeremy Flores on 3/24/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//  http://dreamengine.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "DESecondController.h"

#import "DEViewControllerCache.h"
#import "DEFirstController.h"
#import "DESecondController.h"


@implementation DESecondController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Controller 2";
}

-(IBAction)controller1Tapped:(id)sender {
//    DEFirstController *controller = [[DEViewControllerCache defaultCache] controllerForClass:[DEFirstController class]];
    DESecondController *controller = [[DEViewControllerCache defaultCache] controllerForClass:[DEFirstController class] storyboardName:@"Main" storyboardIdentifier:@"first"];
    
    NSLog(@"%@", controller);
    
    [self.navigationController pushViewController:controller animated:YES];
}

-(IBAction)controller2Tapped:(id)sender {
//    DESecondController *controller = [[DEViewControllerCache defaultCache] controllerForClass:[DESecondController class]];
    DESecondController *controller = [[DEViewControllerCache defaultCache] controllerForClass:[DESecondController class] storyboardName:@"Main" storyboardIdentifier:@"second"];
    
    NSLog(@"%@", controller);
    
    [self.navigationController pushViewController:controller animated:YES];
}

-(void)willBeReused {
    [super willBeReused];
    NSLog(@"reused: %@", self);
}

@end
