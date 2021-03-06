//
//  AppInfoViewController.m
//  TTNews
//
//  Created by 瑞文戴尔 on 16/4/18.
//  Copyright © 2016年 瑞文戴尔. All rights reserved.
//

#import "AppInfoViewController.h"
#import "TTConst.h"
#import <DKNightVersion.h>

@interface AppInfoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *appNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *verLabel;

@end

@implementation AppInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"关于";
    
    NSBundle * mainBoundle = [NSBundle mainBundle];
    NSString * localVersion = [mainBoundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    
    NSString* version = [NSString stringWithFormat:@"版本号：V%@.%@", localVersion, [mainBoundle objectForInfoDictionaryKey: @"CFBundleVersion"]];
    self.verLabel.text = version;
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:nil];
    self.navigationController.navigationBar.dk_barTintColorPicker = DKColorPickerWithRGB(0xfa5054,0x444444,0xfa5054);
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
