# include <Foundation/Foundation.h>
# include "phoneBook.h"

int main()
{   
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    phoneBook *myBook;
    myBook= [ [phoneBook alloc] init];
    [myBook initWithName:@"PHONEBOOK"];
    char name[256],email[256],phone[256];
    int c=1,ch;
    
    while(c)
    { 
      NSLog(@" 1.Add record 2.Delete 3.Find person 4.No of entries 5.List 6.Exit");
      scanf("%d",&ch);
      switch(ch)
      {
            case 1:NSLog(@"Enter person's name ,email id and phone no");//details to insert
                  scanf("%s %s %s",name,email,phone);
                  personRecord* p= [[personRecord alloc] init];
   
                  [p setName: [NSString stringWithUTF8String:name]];
                  [p setEmail: [NSString stringWithUTF8String:email]];
                  [p setPhoneNo: [NSString stringWithUTF8String:phone]];
                  [myBook addRecord: p];
                  break;

         case 2:  NSLog(@"Enter name ,email id and phone no");//record to be deleted
                  scanf("%s %s %s",name,email,phone);
                  personRecord* x= [[personRecord alloc] init];
                  [x setName: [NSString stringWithUTF8String:name]];
                  [x setEmail: [NSString stringWithUTF8String:email]];
                  [x setPhoneNo: [NSString stringWithUTF8String:phone]];
                  [myBook remove: x];
                  break;
         
         case 3: NSLog(@"Enter the name");//name to be searched
                 scanf("%s",name);
                 [myBook findPerson: [NSString stringWithUTF8String:name]];break;
         
         case 4: NSLog(@"No of Entries in the phonebook : %d",[myBook noOfEntries]);
                 break;
         
         case 5: NSLog(@"The list of entries in phonebook");
                 [myBook list];
                 break;
         
         case 6: c=0;break;
      }
     }
     [pool release];       
     return 0;
}
