//
//  ViewController.h
//  ObjectiveCSound
//
//  Created by Dhaval Dobariya on 02/10/21.
//

#import <UIKit/UIKit.h>
#import "Track.h"

@interface MasterViewController : UIViewController
{
    __weak IBOutlet UITableView *trackListTableView;
    NSMutableArray<Track *> *tracks;
}

@end

