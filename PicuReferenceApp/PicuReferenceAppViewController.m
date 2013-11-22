//
//  PicuReferenceAppViewController.m
//  PicuReferenceApp
//
//  Created by Jake Eichenberger on 10/29/13.
//  Copyright (c) 2013 jakegub.com. All rights reserved.
//

#import "PicuReferenceAppViewController.h"

@interface PicuReferenceAppViewController ()

@end

@implementation PicuReferenceAppViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableData = [NSArray arrayWithObjects:@"Blood Products and Antidotes", @"Cardiovascular Medications", @"Management of Shock and Burns", @"Neurological Emergencies", @"CNS Medications", @"Fluid and Electrolyte Disturbances", @"Intubation and Mechanical Ventilation", @"Respiratory Emergencies and Airway", @"Pediatric Early Warning Scores (PEWS)", @"Helpful Calculations", @"Normal and Abnormal Parameters", @"Pediatric BLS", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *picuTableIdentifier = @"PicuTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:picuTableIdentifier];
    
    if (cell == Nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:picuTableIdentifier];
    }
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
