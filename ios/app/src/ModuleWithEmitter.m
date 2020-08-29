//
//  ModuleWithEmitter.m
//  JitsiMeet
//
//  Created by Srinivas Attili on 22/08/20.
//  Copyright © 2020 Jitsi. All rights reserved.
//

#import "ModuleWithEmitter.h"

@implementation ModuleWithEmitter

- (NSArray<NSString *> *)supportedEvents {
    return @[@"MuteAudio"];
}

-(void)muteAudio{
    [self sendEventWithName:@"MuteAudio" body:@{}];
}
@end
