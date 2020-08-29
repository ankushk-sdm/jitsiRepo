//
//  ModuleWithEmitter.h
//  JitsiMeet
//
//  Created by Srinivas Attili on 22/08/20.
//  Copyright © 2020 Jitsi. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModuleWithEmitter : RCTEventEmitter<RCTBridgeModule>

+ (id)allocWithZone:(NSZone *)zone;
@property id parentView;

-(void)muteAudio;
-(void)unMuteAudio;
-(void)offVideo;
-(void)onVideo;
-(void)raiseHand;
-(void)toggleChat;

-(void)muteAudio1;
@end

NS_ASSUME_NONNULL_END
