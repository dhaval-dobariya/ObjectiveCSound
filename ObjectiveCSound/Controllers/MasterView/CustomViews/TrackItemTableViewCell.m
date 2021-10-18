//
//  TrackItemTableViewCell.m
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import "TrackItemTableViewCell.h"

@implementation TrackItemTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupCell];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

/*! @brief To setup cell elements */
-(void)setupCell {
    // To Make rounded image
    [self.trackImageView layoutIfNeeded];
    self.trackImageView.layer.cornerRadius = self.trackImageView.frame.size.width / 2;
    
    // To show propotional content of the whole image
    self.trackImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // To set selection style for the cell
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

@end
