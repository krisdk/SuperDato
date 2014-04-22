//
//  ViewController.h
//  SuperDato
//
//  Created by Kristian Nielsen on 06/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *LabelKlokken;

@property (weak, nonatomic) IBOutlet UISwitch *SwitchKlokken;
- (IBAction)SwitchAktiveret:(id)sender;
@end
