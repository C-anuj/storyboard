//
//  ViewController.m
//  WallPaperBrowser
//
//  Created by anuj on 8/22/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "PaperViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)gotapper:(id)sender {
    [self performSegueWithIdentifier:@"GoToPaper" sender:self];
}

- (IBAction)close:(UIStoryboardSegue*)segue {
    
}

- (IBAction)sliderValueChanged:(id)sender {
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", (int)self.sliderValue.value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"GoToPaper"]) {
        PaperViewController *paperViewController = (PaperViewController *)segue.destinationViewController;
        paperViewController.monthToShow = self.sliderLabel.text.intValue;
    }
}

@end
