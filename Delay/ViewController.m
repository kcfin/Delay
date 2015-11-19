//
//  ViewController.m
//  Delay
//
//  Created by Katelyn Findlay on 11/12/15.
//  Copyright © 2015 Katelyn Findlay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UITableView* mediaTableView;
@property (nonatomic) NSArray *mediaStrings;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mediaTableView = [UITableView new];
    self.mediaStrings = @[@"Twitter", @"Mail", @"iMessage", @""];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MediaCell"];
    cell.textLabel.text = self.mediaStrings[indexPath.row];
    return cell;
}

@end
