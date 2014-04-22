//
//  ViewController.m
//  SuperDato
//
//  Created by Kristian Nielsen on 06/07/12.
//  Copyright (c) 2012 Contentservices.dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize LabelKlokken;
@synthesize SwitchKlokken;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self OpdaterTid];

}

- (void)viewDidUnload
{
    [self setLabelKlokken:nil];
    [self setSwitchKlokken:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)OpdaterTid {
    
    NSDateFormatter *datoVar = [[NSDateFormatter alloc] init];
       
    if(SwitchKlokken.on) {
        [datoVar setDateFormat: @"dd. MMM yyyy, hh:mm:ss"];
        LabelKlokken.text =[datoVar stringFromDate:[NSDate date]];
        
        

        
    } else {
        [datoVar setDateFormat: @"dd. MMM yyyy"];
        LabelKlokken.text = [datoVar stringFromDate:[NSDate date]];
       
        

    }

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)SwitchAktiveret:(id)sender {
    [self OpdaterTid];
    
    

    }


@end
