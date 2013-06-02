//
//  ViewController.m
//  FormulaeHD
//
//  Created by David McAfee on 3/05/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "CustomAlertView.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize formulae;

- (void)viewDidLoad
{
    [Webview setHidden:YES];
    
    { UISwipeGestureRecognizer *swipeRecognizer =
		[[UISwipeGestureRecognizer alloc]
		 initWithTarget:self
		 action:@selector(swipeRightDetected:)];
		swipeRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self.view addGestureRecognizer:swipeRecognizer];
	}
	{UISwipeGestureRecognizer *swipeRecognizer =
		[[UISwipeGestureRecognizer alloc]	 initWithTarget:self
												   action:@selector(swipeLeftDetected:)];
		swipeRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
		[self.view addGestureRecognizer:swipeRecognizer];
		 }
    
    
    BOOL ranBefore = [[NSUserDefaults standardUserDefaults]boolForKey:@"RanBefore"];
    if(!ranBefore) {
        CustomAlertView *alert = [[CustomAlertView alloc]
                                  initWithTitle:@"Welcome to Formulae 1.1" message:@"Thank you for purchasing! Worked examples for the Differential Calculus section are now in the app. Simply tap on a formula to view then swipe left or right to dismiss. Remember to contribute formulae on twitter (@FormulaeiOS). More worked examples coming soon."  delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        
        
        [alert show];
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        
        
        
    }

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)graphInter:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Linear Graphing Quiz yr11" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)quadQuiz:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Quadratics and Polynomials" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)Formulaediff {
    
    UIImage *image = [UIImage imageNamed: @"dfff.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }

     ];}

-(IBAction)linealg {
    
    UIImage *image = [UIImage imageNamed: @"linealg.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)fce {
    
    UIImage *image = [UIImage imageNamed: @"fce.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)energyform {
    
    UIImage *image = [UIImage imageNamed: @"energyform.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)geometry {
    
    UIImage *image = [UIImage imageNamed: @"geometry.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)astrophysics {
    
    UIImage *image = [UIImage imageNamed: @"physics.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)chemical {
    
    UIImage *image = [UIImage imageNamed: @"chemical.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)quadsaved {
    
    UIImage *image = [UIImage imageNamed: @"quadsaved.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)fractions {
    
    UIImage *image = [UIImage imageNamed: @"process.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)slopederiv {
    
    UIImage *image = [UIImage imageNamed: @"slopederivative.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)powerrule {
    
    UIImage *image = [UIImage imageNamed: @"powerule.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)powerrule2 {
    
    UIImage *image = [UIImage imageNamed: @"poweri.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)sumrule {
    
    UIImage *image = [UIImage imageNamed: @"sumrule.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)mymaths {
    
    UIImage *image = [UIImage imageNamed: @"mymaths.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)productrule {
    
    UIImage *image = [UIImage imageNamed: @"productrule.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)euler {
    
    UIImage *image = [UIImage imageNamed: @"euler.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)lnxlog {
    
    UIImage *image = [UIImage imageNamed: @"lnxlog.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)trigfunctions {
    
    UIImage *image = [UIImage imageNamed: @"trigfunctions.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)chain {
    
    UIImage *image = [UIImage imageNamed: @"chain.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)triger {
    
    UIImage *image = [UIImage imageNamed: @"triga.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)logexpo {
    
    UIImage *image = [UIImage imageNamed: @"logexpo.png"];
    [formulae setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        formulae.alpha = 1;
        
        
        
    }
     
     ];}

-(IBAction)exponentLogQuiz:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Exponents and Logs Quiz" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)exponentLog:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"exp" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)quadCon:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Quadratics Concepts " ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    

}

-(IBAction)physics:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Physics Textbook 5.0" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}

-(IBAction)diffCalculusQuiz:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Custom Differentiation Quiz" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}

-(IBAction)calcIsland:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Calculus Island - A Stage 2 Mathematical Studies Adventure" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}

-(IBAction)piDay:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Pi Day - e lnx Elicitation" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}
-(IBAction)sueandSally:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Sue and Sally's Fish and Chips" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}
-(IBAction)NormDist:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"The Normal Distrubtion Elicitation Activity" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}
-(IBAction)GeneralStats:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Statistics Video Playlist Questions" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}

-(IBAction)videoPlay {
    
    NSString *filepath   =   [[NSBundle mainBundle] pathForResource:@"Formulae" ofType:@"mp4"];
    NSURL    *fileURL    =   [NSURL fileURLWithPath:filepath];
    MPMoviePlayerController *moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
    [self.view addSubview:moviePlayerController.view];
    moviePlayerController.fullscreen = YES;
    [moviePlayerController play];
    
}
-(IBAction)zScores:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"A look at z scores" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}

-(IBAction)statisticsCommuting:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"The stats of commuting" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}

-(IBAction)conLevel:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Confidence Interval" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
    
}






-(IBAction)line:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Linear Graphing Quiz yr10" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)factor:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Factorisation Worksheet" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)logger:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Simplifying Logs" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)compoundint:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Compound Interest Practice" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}
-(IBAction)trig:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Trigonometry Quiz" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}

-(IBAction)stats:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"stats" ofType:@"pdf"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:request];
    [Webview setScalesPageToFit:YES];
    [Webview setHidden:NO];
    
}

- (IBAction)swipeRightDetected:(UIGestureRecognizer *)sender {
	[UIView animateWithDuration:.5 animations:^{
        
        [Webview setHidden:YES]; 
        
        
        
    } ];


}



- (IBAction)swipeLeftDetected:(UIGestureRecognizer *)sender {
    [UIView animateWithDuration:.5 animations:^{
        
         [Webview setHidden:YES]; 
     
        
        
    } ];


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
