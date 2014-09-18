//
//  Ship+ConvenienceMethods.m
//  OpenMe
//
//  Created by Chris Gonzales on 9/18/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Ship+ConvenienceMethods.h"
#import "Engine.h"

@implementation Ship (ConvenienceMethods)

+(instancetype)shipFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context
{
    Ship *newShip = [NSEntityDescription insertNewObjectForEntityForName:@"Ship" inManagedObjectContext:context];
    newShip.name = dictionary[@"shipName"];
    newShip.pirate = dictionary[@"pirate"];
    newShip.engine = [NSEntityDescription insertNewObjectForEntityForName:@"Engine" inManagedObjectContext:context];
    newShip.engine.engineType = dictionary[@"engineType"];
    
    return newShip;
}

@end
