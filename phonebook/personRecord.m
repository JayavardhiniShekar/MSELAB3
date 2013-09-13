# include <Foundation/Foundation.h>
# include "personRecord.h"

@implementation personRecord
@synthesize name,email,phoneNo;
-(void) print
{
   NSLog(@"Name %@",name);
   NSLog(@"Email %@",email);
   NSLog(@"Phone no %@",phoneNo);
}

@end