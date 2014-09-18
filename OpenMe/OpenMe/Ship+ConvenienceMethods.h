//
//  Ship+ConvenienceMethods.h
//  OpenMe
//
//  Created by Chris Gonzales on 9/18/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Ship.h"

@interface Ship (ConvenienceMethods)

+(instancetype)shipFromDictionary:(NSDictionary *)dictionary andContext:(NSManagedObjectContext *)context;

@end
