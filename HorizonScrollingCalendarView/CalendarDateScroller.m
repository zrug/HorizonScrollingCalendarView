//
//  CalendarDateScroller.m
//  HorizonScrollingCalendarView
//
//  Created by zrug on 14-7-5.
//  Copyright (c) 2014年 com.zcloud2011. All rights reserved.
//

#import "CalendarDateScroller.h"

@implementation CalendarDateScroller

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:1 green:.8 blue:.8 alpha:1];

        UIScrollView *dateScroller = [[UIScrollView alloc] initWithFrame:[self bounds]];
        [self addSubview:dateScroller];
        
        NSDateFormatter *dateFmt = [[NSDateFormatter alloc] init];
        dateFmt.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        dateFmt.dateFormat = @"(MM)dd";

        NSDateFormatter *weekdayFmt = [[NSDateFormatter alloc] init];
        weekdayFmt.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
        weekdayFmt.dateFormat = @"EE";
        
        NSDate *date = [NSDate date];
        NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
        NSUInteger preservedComponents = (NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit);
        date = [calendar dateFromComponents:[calendar components:preservedComponents fromDate:date]];

        NSLog(@"%@, %@", [dateFmt stringFromDate:date], [weekdayFmt stringFromDate:date]);

        
        NSDateComponents *comps = [NSDateComponents new];
        comps.month = -1;
        NSDate *datePreviousMonth = [calendar dateByAddingComponents:comps toDate:[NSDate date] options:0];
        comps = [calendar components:NSMonthCalendarUnit fromDate:datePreviousMonth]; // Get necessary date components
        NSLog(@"Previous month: %d",[comps month]);
        
        comps = [NSDateComponents new];
        comps.day = 0;
        NSDate *datePreviousDay = [calendar dateByAddingComponents:comps toDate:[NSDate date] options:0];
        comps = [calendar components:NSDayCalendarUnit | NSWeekdayCalendarUnit fromDate:datePreviousDay]; // Get necessary date components

        //                     Day, Weekday index
        NSLog(@"Previous 7 date: %d %d",[comps day], [comps weekday]);
        
    
    }
    return self;
}

@end
