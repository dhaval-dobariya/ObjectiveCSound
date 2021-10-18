//
//  JsonParser.m
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import "JsonParser.h"

@implementation JsonParser

static JsonParser *_sharedSingleton = nil;

/*!
 @brief To get shared object
 @return JsonParser shared object
*/
+(JsonParser *)sharedManager {
    @synchronized([JsonParser class]) {
        if (!_sharedSingleton)
            _sharedSingleton = [[self alloc] init];
        return _sharedSingleton;
    }
    return nil;
}

/*!
 @brief To get JSON from file
 @param fileName The input value representing the name of the file
 @param extension The input value representing the file extension e.g. json
 @return NSDictionary json content from file
*/
- (NSDictionary *)JSONFromFile:(NSString *)fileName fileExtension:(NSString *)extension
{
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:extension];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
