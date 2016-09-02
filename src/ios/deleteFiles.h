//
//  deleteFiles.h
//  
//
//  Created by John Weaver on 0+/02/2016.
//
//

#import <Cordova/CDVPlugin.h>


@interface DeleteFiles : CDVPlugin < UINavigationControllerDelegate, UIScrollViewDelegate>

@property (copy)   NSString* callbackId;

- (void) delete:(CDVInvokedUrlCommand *)command;

@end
