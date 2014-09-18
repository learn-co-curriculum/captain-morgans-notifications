//
//  Pirate+ConvenienceMethods.h
//  OpenMe
//
//  Created by Chris Gonzales on 9/18/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Pirate.h"

@interface Pirate (ConvenienceMethods)

+(instancetype)pirateFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context;
@end
