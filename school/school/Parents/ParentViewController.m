//
//  ParentViewController.m
//  school
//
//  Created by Surendra's on 10/28/14.
//  Copyright (c) 2014 Surendra. All rights reserved.
//

#import "ParentViewController.h"
#import "common_Constants.h"

@interface ParentViewController ()

@end

@implementation ParentViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
            
        
        self.title = @"Parents";
        
        
        [self.tabBarItem setImage:[[UIImage imageNamed:@"staff"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        
        [self.tabBarItem setSelectedImage:[[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected", @"staff"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        
        self.navigationItem.title=@"Parents";

        
        
        
        parentsTable =[[UITableView alloc]initWithFrame:self.view.bounds];
        
        parentsTable.dataSource = self;
        
        parentsTable.delegate = self;
        
        parentsTable.separatorColor =[UIColor darkGrayColor];
        
        parentsTable.backgroundColor=[UIColor whiteColor];
        
        [self.view addSubview:parentsTable];
        

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
    
    [parentsTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    cell.textLabel.text=@"parent";
    
    return cell;
    
    
}

@end
