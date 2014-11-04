//
//  StudentViewController.h
//  school
//
//  Created by Surendra's on 10/28/14.
//  Copyright (c) 2014 Surendra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    UITableView *studentTable;
}
@end
