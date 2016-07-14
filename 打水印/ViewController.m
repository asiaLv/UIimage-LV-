//
//  ViewController.m
//  打水印
//
//  Created by lvAsia on 16/7/14.
//  Copyright © 2016年 answe lv. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+LV.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [UIImage waterImageWithBg:@"yao.png" logo:@"zhou.png" scale:0.4 imageBlock:^(UIImage *image) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.imageView.image = image;
            
        });
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
