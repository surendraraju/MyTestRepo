//
//  SchoolViewController.m
//  school
//
//  Created by Surendra's on 10/28/14.
//  Copyright (c) 2014 Surendra. All rights reserved.
//

#import "SchoolViewController.h"

#import "common_Constants.h"

@interface SchoolViewController ()

@end

@implementation SchoolViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
            
        
        self.title = @"School";
        
        
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
        self.navigationItem.title=@"School";
        
        
        schoolTable =[[UITableView alloc]initWithFrame:self.view.bounds];
        
        schoolTable.dataSource = self;
        
        schoolTable.delegate = self;
        
        schoolTable.separatorColor =[UIColor darkGrayColor];
        
        schoolTable.backgroundColor=[UIColor whiteColor];
        
        [self.view addSubview:schoolTable];

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
    
    [schoolTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    cell.textLabel.text=@"school";
    
    return cell;
    
    
}


@end
