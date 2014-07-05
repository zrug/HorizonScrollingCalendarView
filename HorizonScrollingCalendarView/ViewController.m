//
//  ViewController.m
//  HorizonScrollingCalendarView
//
//  Created by zrug on 14-7-5.
//  Copyright (c) 2014年 com.zcloud2011. All rights reserved.
//

#import "ViewController.h"
#import "CalendarMonthTrigger.h"
#import "CalendarDateScroller.h"
#import "CalendarMessageBar.h"

@interface ViewController () {
    CalendarMonthTrigger *calendarMonthTrigger;
    CalendarDateScroller *calendarDateScroller;
    CalendarMessageBar *calendarMessageBar;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    calendarMonthTrigger = [[CalendarMonthTrigger alloc] initWithFrame:CGRectMake(0, 20, 320, 44)];
    [self.view addSubview:calendarMonthTrigger];

    calendarDateScroller = [[CalendarDateScroller alloc] initWithFrame:CGRectMake(0, 64, 320, 65)];
    [self.view addSubview:calendarDateScroller];

    calendarMessageBar = [[CalendarMessageBar alloc] initWithFrame:CGRectMake(0, 129, 320, 24)];
    [self.view addSubview:calendarMessageBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
