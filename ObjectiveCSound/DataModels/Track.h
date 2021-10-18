//
//  Track.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Track : NSObject

@property (nonatomic) id trackId;
@property (nonatomic) NSString *trackName;
@property (nonatomic) NSString *artistName;
@property (nonatomic) NSString *trackImage;
@property (nonatomic) NSString *albumName;
@property (nonatomic) NSString *price;
@property (nonatomic) NSString *releaseDate;

@end

NS_ASSUME_NONNULL_END
