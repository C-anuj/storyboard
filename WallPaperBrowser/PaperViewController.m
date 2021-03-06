//
//  PaperViewController.m
//  WallPaperBrowser
//
//  Created by anuj on 8/22/14.
//  Copyright (c) 2014 anuj. All rights reserved.
//

#import "PaperViewController.h"

@interface PaperViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *wallpaperview;

@end

@implementation PaperViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewWillAppear:(BOOL)animated {
    NSString *imageName = [NSString stringWithFormat:@"%02d.jpg",self.monthToShow];
    self.wallpaperview.image = [UIImage imageNamed:imageName];
}


@end
