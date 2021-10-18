//
//  NSString+DateFormatter.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DateFormatter)

- (NSString *)dateStringFromFormat:(NSString *)fromFormat toFormat:(NSString *)toFormat;

@end

NS_ASSUME_NONNULL_END
