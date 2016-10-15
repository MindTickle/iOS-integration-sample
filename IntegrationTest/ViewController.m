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

@property (nonatomic) MindTickleAuth* mtauth;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [MindTickleAuth initWithDomain:@"test1.idea08.mindtickle.com" secretKey:@"c3a5ec565237981408e838105019f6d97c69eebf10d75355877f979892dcfd16bf52477dc40bc74cb8084716e9f194c4" email:@"hridayesh.gupta@mindtickle.com"];
}
- (IBAction)openMindTickle:(id)sender {
    [MindTickleAuth openMindTickle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
