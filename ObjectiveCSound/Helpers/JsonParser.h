//
//  JsonParser.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JsonParser : NSObject

+(JsonParser *)sharedManager;

-(NSDictionary *)JSONFromFile:(NSString *)fileName fileExtension:(NSString *)extension;

@end

NS_ASSUME_NONNULL_END
