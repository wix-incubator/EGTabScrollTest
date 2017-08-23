//
//  TableViewController.m
//  EGTabScrollTest
//
//  Created by Leo Natan (Wix) on 23/08/2017.
//  Copyright © 2017 Leo Natan (Wix). All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	self.tableView.accessibilityIdentifier = @"TableViewXXX";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
	[super viewDidLayoutSubviews];
	
//	self.tableView.scrollIndicatorInsets = self.tableView.contentInset = UIEdgeInsetsMake(self.topLayoutGuide.length, 0, self.bottomLayoutGuide.length, 0);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 200;
}

- (UIColor*)_randomColorForSeed:(NSString*)seed
{
	NSUInteger total = 0;
	for(NSUInteger idx = 0; idx < seed.length; idx += 1)
	{
		total += [seed characterAtIndex:idx];
	}
	
	srand48(total * 200);
	CGFloat r = drand48();
	
	srand48(total);
	CGFloat g = drand48();
	
	srand48(total / 200);
	CGFloat b = drand48();
	
	return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
	cell.textLabel.text = [@(indexPath.row) stringValue];
	cell.backgroundColor = [self _randomColorForSeed:[indexPath description]];
    
    return cell;
}

@end
