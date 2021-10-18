//
//  NSString+DateFormatter.m
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import "NSString+DateFormatter.h"

@implementation NSString (DateFormatter)

/*!
 @brief To format string
 @param fromFormat The input value representing the date format of target date string
 @param toFormat The input value representing the expected output date format
 @return NSString formatted string
*/
- (NSString *)dateStringFromFormat:(NSString *)fromFormat toFormat:(NSString *)toFormat {
    NSDateFormatter *fromFormatter = [[NSDateFormatter alloc]init];
    [fromFormatter setDateFormat:fromFormat];
    
    NSDate *fromDate = [fromFormatter dateFromString:self];
    
    NSDateFormatter *toFormatter = [[NSDateFormatter alloc]init];
    [toFormatter setDateFormat:toFormat];
    
    return [toFormatter stringFromDate:fromDate];
}

@end
