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

@end

NS_ASSUME_NONNULL_END
