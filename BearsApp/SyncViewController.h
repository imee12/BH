//
//  SyncViewController.h
//  BearsApp
//
//  Created by Imee Cuison on 6/26/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "RFduinoManager.h"

@class RFduinoManager;
@class RFduino;



@interface SyncViewController : UITableViewController<RFduinoManagerDelegate, UITableViewDelegate>



{
    RFduinoManager *rfduinoManager;
    
    
}



@end
