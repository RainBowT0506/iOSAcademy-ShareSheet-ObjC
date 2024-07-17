//
//  ViewController.m
//  iOSAcademy-ShareSheet-ObjC
//
//  Created by RainBowT on 2024/7/17.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 創建並設置 UIButton
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.backgroundColor = [UIColor linkColor];
    [self.button setTitle: @"Tap ME" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.button.frame = CGRectMake(0, 0, 200, 50);
    self.button.center = self.view.center;
    
    // 添加目標動作
    [self.button addTarget:self action:@selector(presentShareSheet:) forControlEvents:UIControlEventTouchUpInside];
    
    // 將按鈕添加到視圖
    [self.view addSubview:self.button];
}

// 當按鈕被點擊時，調用此方法來顯示分享表單
-(void)presentShareSheet:(UIButton *)sender{
    // 確保 image 和 url 都被正確創建
    UIImage *image = [UIImage systemImageNamed:@"bell"];
    NSURL *url = [NSURL URLWithString:@"https://www.google.com"];
    
    if(image && url){
        // 創建 UIActivityViewController 並設置要分享的內容
        UIActivityViewController *shareSheetVC = [[UIActivityViewController alloc] initWithActivityItems:@[image,url] applicationActivities:nil];
        // 為 iPad 設置彈出視圖的來源視圖和位置
        shareSheetVC.popoverPresentationController.sourceView = sender;
        shareSheetVC.popoverPresentationController.sourceRect = sender.frame;
        
        // 顯示分享表單
        [self presentViewController:shareSheetVC animated:true completion:nil];
    }
    
}



@end
