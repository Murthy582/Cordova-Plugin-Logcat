#import "LogCat.h"
#import <Cordova/CDV.h>

@implementation LogCat

- (void)sendLogs:(CDVInvokedUrlCommand*)command {

    NSArray *allPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [allPaths objectAtIndex:0];
    NSString *pathForLog = [documentsDirectory stringByAppendingPathComponent:@"logcat.txt"];
    
    freopen([pathForLog cStringUsingEncoding:NSASCIIStringEncoding],"a+",stderr);
  
  }
@end
