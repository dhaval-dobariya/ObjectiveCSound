//
//  ViewController.m
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import "MasterViewController.h"
#import "Constants.h"
#import "TrackItemTableViewCell.h"
#import "TrackManager.h"
#import <SDWebImage/SDWebImage.h>
#import "DetailsViewController.h"

@interface MasterViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set screen title
    self.navigationItem.title = @"Tracks";
    
    [self setupTableView];
    
    [self loadData];
}

/*! @brief To setup track list tableview */
-(void)setupTableView {
    // To hide unnecessary sepator line of tableview
    trackListTableView.tableFooterView = [UIView new];
    
    // Set data source and delegate
    trackListTableView.dataSource = self;
    trackListTableView.delegate = self;
    
    // Register cell class
    [trackListTableView registerNib:[UINib nibWithNibName:@"TrackItemTableViewCell" bundle:nil] forCellReuseIdentifier:TrackItemTableViewCellIdentifier];
}

/*! @brief To get data and load into tableview */
-(void)loadData {
    __weak __typeof(self) weakSelf = self;

    // Fetch data from file in background and then load it
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        __typeof(self) strongSelf = weakSelf;

        strongSelf->tracks = [[TrackManager sharedManager] getTrackList];
        
        dispatch_async(dispatch_get_main_queue(), ^(void) {

            [strongSelf->trackListTableView reloadData];
        });
    });
}

#pragma mark - UITableViewDataSource
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TrackItemTableViewCell *cell = (TrackItemTableViewCell *)[tableView dequeueReusableCellWithIdentifier:TrackItemTableViewCellIdentifier forIndexPath:indexPath];
    
    Track *track = [tracks objectAtIndex:indexPath.row];
    [cell.trackImageView sd_setImageWithURL:[NSURL URLWithString:track.trackImage]
                 placeholderImage:[UIImage imageNamed:@"music"]];

    cell.trackNameLabel.text = track.trackName;
    cell.artistNameLabel.text = track.artistName;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tracks.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Redirect to track details screen with selected track object
    DetailsViewController *controller = (DetailsViewController *)[self.storyboard instantiateViewControllerWithIdentifier:DetailsViewControllerIdentifier];
    controller.selectedTrack = tracks[indexPath.row];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
