//
//  DetailsViewController.m
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import "DetailsViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = _selectedTrack.trackName;

    [self setupUI];
    
    [self fillData];
}

/*! @brief To setup UI element related stuff of the screen */
-(void)setupUI {
    // To Make rounded image
    [trackImageView layoutIfNeeded];
    trackImageView.layer.cornerRadius = trackImageView.frame.size.width / 2;
    
    // To show propotional content of the whole image
    trackImageView.contentMode = UIViewContentModeScaleAspectFill;
}

/*! @brief To fill data into respective element of the screen */
-(void)fillData {
    [trackImageView sd_setImageWithURL:[NSURL URLWithString:_selectedTrack.trackImage]
                 placeholderImage:[UIImage imageNamed:@"music"]];
    trackNameLabel.text = _selectedTrack.trackName;
    artistNameLabel.text = [NSString stringWithFormat:@"By: %@", _selectedTrack.artistName];
    albumNameLabel.text = _selectedTrack.albumName;
    releaseDateLabel.text = _selectedTrack.releaseDate;
    priceLabel.text = _selectedTrack.price;
}

@end
