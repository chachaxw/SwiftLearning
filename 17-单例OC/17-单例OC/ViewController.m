//
//  ViewController.m
//  17-单例OC
//
//  Created by Wei Zhou on 03/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"\nHello, Chacha! I'm a singleton");
    NSLog(@"\n%@", [NetworkTools shareNetworkTools]);
}


@end
