//
//  TrackItemTableViewCell.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TrackItemTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *trackImageView;
@property (weak, nonatomic) IBOutlet UILabel *trackNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;

@end

NS_ASSUME_NONNULL_END
