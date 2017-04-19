//
//  ViewController.m
//  YHLangDemo
//
//  Created by solot10 on 17/4/19.
//  Copyright © 2017年 solot10. All rights reserved.
//

#import "ViewController.h"
#import "LanguageSettingViewController.h"
#import "YHLanguageSetting.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [YHLanguageSetting shareInstance].downloadUrl = @"https://testapi.solot.co/catches/syncResource";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(id)sender {
    
    LanguageSettingViewController *vc = [[LanguageSettingViewController alloc] init];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nvc animated:YES completion:nil];
}

@end
