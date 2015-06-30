//
//  FindViewController.h
//  BearsApp
//
//  Created by Imee Cuison on 6/26/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RFduinoManager.h"


@interface FindViewController : UIViewController
{
    RFduinoManager *rfduinoManager;
    bool wasScanning;
}

@property (weak, nonatomic) IBOutlet UIButton *FindBtn;
@property (strong, nonatomic) UIWindow *window;

@end
