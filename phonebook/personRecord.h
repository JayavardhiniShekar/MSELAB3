#include <Foundation/Foundation.h>

@interface personRecord : NSObject
{
   NSString* name;
   NSString* email;
   NSString* phoneNo;
}
@property (retain) NSString *name;
@property (retain) NSString *email;
@property (retain) NSString *phoneNo;
-(void) print;
@end