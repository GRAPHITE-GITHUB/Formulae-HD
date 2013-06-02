//
//  ViewController.h
//  FormulaeHD
//
//  Created by David McAfee on 3/05/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {
    
IBOutlet UIWebView *Webview;
    IBOutlet UIImageView *formulae;
    
}

-(IBAction)slopederiv;
-(IBAction)factor:(id)sender;
-(IBAction)trig:(id)sender;
-(IBAction)compoundint:(id)sender;
-(IBAction)astrophysics;
-(IBAction)energyform;
-(IBAction)geometry;
-(IBAction)chemical;
-(IBAction)quadsaved;
-(IBAction)fractions;
-(IBAction)triger;
-(IBAction)logexpo;
-(IBAction)logger:(id)sender;
-(IBAction)fce;
-(IBAction)back;

-(IBAction)line:(id)sender;

-(IBAction)graphInter:(id)sender;
-(IBAction)quadQuiz:(id)sender;
@property(nonatomic,strong)IBOutlet UIImageView *formulae;

-(IBAction)quadCon:(id)sender;

-(IBAction)stats:(id)sender;
@end
