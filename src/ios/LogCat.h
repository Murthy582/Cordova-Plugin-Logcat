//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#import <Cordova/CDV.h>

@interface LogCat : CDVPlugin

- (void) sendLogs:(CDVInvokedUrlCommand*)command;

@end