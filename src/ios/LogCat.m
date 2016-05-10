#import "LogCat.h"
#import <Cordova/CDV.h>

@implementation LogCat

- (void)sendLogs:(CDVInvokedUrlCommand*)command {

  NSDictionary* options = [command argumentAtIndex:0];

  NSString *message  = options[@"message"];
  
  }