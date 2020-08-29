//
//  AudioMode.h
//  JitsiMeet
//
//  Created by Srinivas Attili on 22/08/20.
//  Copyright © 2020 Jitsi. All rights reserved.
//

#import <React/RCTEventEmitter.h>
#import <React/RCTLog.h>
#import <WebRTC/WebRTC.h>

NS_ASSUME_NONNULL_BEGIN

@interface AudioMode : RCTEventEmitter<RTCAudioSessionDelegate>

@property(nonatomic, strong) dispatch_queue_t workerQueue;

@end

NS_ASSUME_NONNULL_END
