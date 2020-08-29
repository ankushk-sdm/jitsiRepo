//
//  ModuleWithEmitter.m
//  JitsiMeet
//
//  Created by Srinivas Attili on 22/08/20.
//  Copyright © 2020 Jitsi. All rights reserved.
//

#import "ModuleWithEmitter.h"
#import "JitsiMeetView.h"


@implementation ModuleWithEmitter
RCT_EXPORT_MODULE();

+ (id)allocWithZone:(NSZone *)zone {
    static ModuleWithEmitter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}


- (NSArray<NSString *> *)supportedEvents {
    return @[@"MuteAudio123"];
}
- (NSDictionary *)constantsToExport
{
    return @{@"MuteAudio123":@"MuteAudio123"};
}
//-(void)muteAudio1{
//    [self sendEventWithName:@"MuteAudio123" body:@{}];
//}


-(void)muteAudio
{
    NSDictionary *commandJson = @{@"commandCode":[NSNumber numberWithInt:97100],@"commandData":@""};
    [self sendEventWithName:@"MuteAudio123" body:commandJson];
}
-(void)unMuteAudio
{
    NSDictionary *commandJson = @{@"commandCode":[NSNumber numberWithInt:97101],@"commandData":@""};
    [self sendEventWithName:@"MuteAudio123" body:commandJson];
}
-(void)offVideo
{
    NSDictionary *commandJson = @{@"commandCode":[NSNumber numberWithInt:97102],@"commandData":@""};
    [self sendEventWithName:@"MuteAudio123" body:commandJson];
}
-(void)onVideo
{
    NSDictionary *commandJson = @{@"commandCode":[NSNumber numberWithInt:97103],@"commandData":@""};
    [self sendEventWithName:@"MuteAudio123" body:commandJson];
}

-(void)raiseHand
{
    NSDictionary *commandJson = @{@"commandCode":[NSNumber numberWithInt:97106],@"commandData":@""};
    [self sendEventWithName:@"MuteAudio123" body:commandJson];
}
-(void)toggleChat{
    NSDictionary *commandJson = @{@"commandCode":[NSNumber numberWithInt:97112],@"commandData":@""};
    [self sendEventWithName:@"MuteAudio123" body:commandJson];
}

#pragma mark - Exported methods

RCT_EXPORT_METHOD(participantsData:(id)participantsData) {
//    NSLog(@"<><><><><><><",participantsData);
    if (self.parentView) {
//        NSLog(@"/*/*/*/*/",participantsData);
        JitsiMeetView *meetView = (JitsiMeetView *)self.parentView;
        [meetView didUpdateParticipantsData:participantsData];
    }
}

@end
