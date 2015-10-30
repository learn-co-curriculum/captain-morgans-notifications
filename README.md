

# Captain Morgan's Notifications -- Advanced Lab

## Instructions

  1. Check out what we have for you!
  2. You'll find that in order to add a new pirate or a new ship, our
     `AddPirateViewController` and `AddShipViewController` have to grab
     `FISPiratesDataStore` and call its methods. This makes the controllers
     highly dependent on each other... let's reduce this dependency.
  3. Make `FISPiratesDataStore` register to listen for NSNotifications.
  4. Make each of your "add" controllers broadcast an NSNotification with the
     information that they take from the user attached as an `NSDictionary`.
  5. Create categories on your `Ship` and `Pirate` classes, each with a
     convenience class method as shown below:

     ```objc
    +(instancetype)shipFromDictionary:(NSDictionary *)dictionary
    andContext:(NSManagedObjectContext *)context;

    +(instancetype)pirateFromDictionary:(NSDictionary *)dictionary
    andContext:(NSManagedObjectContext *)context;
    ```

## Hint

Your NSNotificationCenter `addObserver` method should be placed inside of the init method of your `FISPiratesDataStore`. Don't forget to appropriately remove the observer as well!
