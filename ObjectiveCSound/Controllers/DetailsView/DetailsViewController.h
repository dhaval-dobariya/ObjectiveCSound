//
//  DetailsViewController.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <UIKit/UIKit.h>
#import "Track.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
{
    __weak IBOutlet UIImageView *trackImageView;
    __weak IBOutlet UILabel *albumNameLabel;
    __weak IBOutlet UILabel *trackNameLabel;
    __weak IBOutlet UILabel *artistNameLabel;
    __weak IBOutlet UILabel *releaseDateLabel;
    __weak IBOutlet UILabel *priceLabel;
}

@property (nonatomic) Track *selectedTrack;

@end

NS_ASSUME_NONNULL_END
