//
//  StudentViewController.m
//  school
//
//  Created by Surendra's on 10/28/14.
//  Copyright (c) 2014 Surendra. All rights reserved.
//

#import "StudentViewController.h"

#import "common_Constants.h"

@interface StudentViewController ()

@end

@implementation StudentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
            
        //gonna add the images needed here .
        
        
        
        
        //removing the title for tab bar .
        
        if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0"))
        {
            [self.tabBarItem setImage:[[UIImage imageNamed:@""] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
            
            [self.tabBarItem setSelectedImage:[[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected", @""]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        }
        else
        {
            [self.tabBarItem setImage:[UIImage imageNamed:@""] ];
            
            [self.tabBarItem setSelectedImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected", @""]] ];
        }
        self.navigationItem.title=@"Student";
        
        
        studentTable =[[UITableView alloc]initWithFrame:self.view.bounds];
        
        studentTable.dataSource = self;
        
        studentTable.delegate = self;
        
        studentTable.separatorColor =[UIColor darkGrayColor];
        
        studentTable.backgroundColor=[UIColor whiteColor];
        
        [self.view addSubview:studentTable];

        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];


   
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return 6;
    
}





- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 44;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
   
    UITableViewCell * cell =[[UITableViewCell alloc]init];
    
    cell.backgroundColor=[UIColor clearColor];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [studentTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
   
    cell.textLabel.text=@"student";
    
    return cell;
    
    
}

@end
