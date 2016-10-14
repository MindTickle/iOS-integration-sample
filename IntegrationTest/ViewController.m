//
//  ViewController.m
//  IntegrationTest
//
//  Created by hridayesh gupta on 14/10/16.
//  Copyright © 2016 MindTickle. All rights reserved.
//

#import "ViewController.h"

#import <MindTickleAuth.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton* button;
@property (nonatomic, weak) IBOutlet UILabel* label;
@property (nonatomic, weak) IBOutlet UITextField* field;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    MindTickleAuth*auth = [[MindTickleAuth alloc] initWithAccessKey:@"gwgwe" secretKey:@"wgw"];
    self.label.text = [auth generateTokenFor:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
