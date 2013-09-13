# include <Foundation/Foundation.h>
# include "phoneBook.h"

@implementation phoneBook

//constructor
-(id) initWithName: (NSString *)Name
{
   phoneBookName=[[NSString alloc]init];
   phoneBookName= Name;
   book=[[NSMutableArray alloc]init];
   return self;
}

//To add records to the phonebook ,using in-built method addObject
-(void) addRecord: (personRecord *) theRecord
{
   [book addObject:theRecord];
}

//To remove records from the phonebook ,using in-built method removeObject,can remove all entries using removeAllObjects method
-(void) remove: (personRecord *) theRecord
{
  
   
   for(id obj in book)
   {  
      
      if([[obj name] isEqual:[theRecord name]]&&[[obj email] isEqual:[theRecord email]]&&[[obj phoneNo] isEqual:[theRecord phoneNo]])
      {  
               [book removeObject:obj];break;

      }
   }

}

////To find a record in the phonebook given name ,using NSComparisonResult class
-(void) findPerson: (NSString *) theName
{
   
   for(id obj in book)
   {  
      NSComparisonResult comp= [[obj name] compare: theName];
      if(comp==NSOrderedSame)//if given name exists in the records then print respective values
      {
          NSLog(@"Name:%@",[obj name]);
          NSLog(@"Email:%@",[obj email]);
          NSLog(@"Phone:%@",[obj phoneNo]);

      }
   }
   
}

//To count no. of records in the phonebook ,using in-built method count
-(int) noOfEntries
{
   int numObjects= [book count];
   return numObjects;
}

//To print all records in the phonebook ,using fast enumeration
-(void) list
{
   for(id obj in book)
   {  
      [obj print];
   }
}

//release memory
-(void) dealloc
{
   
   [self release];
   [super dealloc];
}
@end