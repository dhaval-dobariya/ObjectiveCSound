//
//  TrackManager.m
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import "TrackManager.h"
#import "JsonParser.h"
#import "Constants.h"
#import "NSString+DateFormatter.h"

@implementation TrackManager

static TrackManager *_sharedSingleton = nil;

/*!
 @brief To get shared object
 @return TrackManager Track manager shared object
*/
+(TrackManager *)sharedManager {
    @synchronized([TrackManager class]) {
        if (!_sharedSingleton)
            _sharedSingleton = [[self alloc] init];
        return _sharedSingleton;
    }
    return nil;
}

/*!
 @brief To get track list
 @return (NSMutableArray<Track *> *) Track list
*/
-(NSMutableArray<Track *> *)getTrackList {
    NSDictionary *response = [[JsonParser sharedManager] JSONFromFile:SongsDataFileName fileExtension:SongsFileExtension];
    
    NSMutableArray<Track *> *tracks = [NSMutableArray new];
    
    if (response != nil) {
        NSArray *results = [response objectForKey:@"results"];
        
        for (NSDictionary *result in results) {
            Track *track = [Track new];
            track.trackId = [result objectForKey:@"trackId"];
            track.trackName = [result objectForKey:@"trackName"];
            track.trackImage = [result objectForKey:@"artworkUrl100"];
            track.artistName = [result objectForKey:@"artistName"];
            track.albumName = [result objectForKey:@"collectionName"];
            track.price = [NSString stringWithFormat:@"$%0.2f", [[result objectForKey:@"trackPrice"] floatValue]];
            NSString *releaseDateString = [result objectForKey:@"releaseDate"];
            track.releaseDate = [releaseDateString dateStringFromFormat:FromDateFormat toFormat:ToDateFormat];

            [tracks addObject:track];
        }
    }
    
    return tracks;
}

@end
