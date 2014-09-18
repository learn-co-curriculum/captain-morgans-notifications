//
//  Pirate+ConvenienceMethods.m
//  OpenMe
//
//  Created by Chris Gonzales on 9/18/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Pirate+ConvenienceMethods.h"

@implementation Pirate (ConvenienceMethods)

+(instancetype)pirateFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context
{
    Pirate *newPirate = [NSEntityDescription insertNewObjectForEntityForName:@"Pirate" inManagedObjectContext:context];
    newPirate.name = dictionary[@"name"];
    
    return newPirate;
}
@end
