//
//  TrackManager.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <Foundation/Foundation.h>
#import "Track.h"

NS_ASSUME_NONNULL_BEGIN

@interface TrackManager : NSObject

+(TrackManager *)sharedManager;

-(NSMutableArray<Track *> *)getTrackList;

@end

NS_ASSUME_NONNULL_END
