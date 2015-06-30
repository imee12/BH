//
//  SmartBear.h
//  BearsApp
//
//  Created by Imee Cuison on 6/29/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RFduino.h"




struct AccelPoint { BOOL accelReady; BOOL retransmit; CGFloat x; CGFloat y; CGFloat z; }; typedef struct AccelPoint AccelPoint;



//typedef NS_ENUM(Byte, SMARTBEAR_RESPONSES) {
//    SMARTBEAR_RESPONSE_NOT_SQUEEZED         = 0x0000000,
//    SMARTBEAR_RESPONSE_SQUEEZED             = 0x0000001,
//    SMARTBEAR_RESPONSE_UNREAD_MESSAGE       = 0x0000010,
//    SMARTBEAR_RESPONSE_NO_UNREAD_MESSAGE    = 0x0000011,
//    
//};

@interface SmartBear : NSObject


@property(strong,nonatomic) RFduino *rfduino;

+(void) notSqueezed: (RFduino *) controller;
+(void) squeezed: (RFduino *) controller;
+(void) unreadMessage: (RFduino *) controller;
+(void) noUnreadMessage: (RFduino *) controller;


@end
