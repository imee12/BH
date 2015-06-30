//
//  BlePacket.h
//  BearsApp
//
//  Created by Imee Cuison on 6/29/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RFduino.h"

@interface BlePacket : NSObject

@property RFduino *destination;
@property NSData *payload;

@end
