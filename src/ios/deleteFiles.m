//
//  deleteFiles.m
//
//  Created by John Weaver on 08/30/16
//
//

#import "deleteFiles.h"

@implementation DeleteFiles 

@synthesize callbackId;

- (void)clearTempDirectory
{
   NSArray* tmpDirectory = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:NSTemporaryDirectory() error:NULL];
    for (NSString *file in tmpDirectory) {
		if ([file hasPrefix:@"cdv_photo_"])
		{
			NSLog(@"REMOVING FILE: %@", file);    
			[[NSFileManager defaultManager] removeItemAtPath:[NSString stringWithFormat:@"%@%@", NSTemporaryDirectory(), file] error:NULL];
		}
    }
}

- (void) delete:(CDVInvokedUrlCommand *)command {
    
    NSDictionary *options = [command.arguments objectAtIndex: 0];
  
    self.callbackId = command.callbackId;

	  [self clearTempDirectory];
	  
	  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
    
}
@end
