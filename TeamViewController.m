//
//  TeamViewController.m
//  Pocket Roster
//
//  Created by James P. Garvey on 5/11/13.
//  Copyright (c) 2013 Pocket Roster. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamTVC.h"
#import "NewsFeedViewController.h"
#import "FlickrPracticeViewController.h"


@interface TeamViewController ()

@end

@implementation TeamViewController

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
	
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"embedTeam"]) {
        
        if ([segue.destinationViewController isKindOfClass:[TeamTVC class]]) {
            TeamTVC *nFVC = (TeamTVC *)segue.destinationViewController;
            nFVC.incommingTeamURL =self.incommingTeamURL;
        }
    }
    
}

@end
