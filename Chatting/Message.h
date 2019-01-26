//
//  Message.h
//  Chatting
//
//  Created by user148651 on 1/26/19.
//  Copyright © 2019 user148651. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Message : NSObject

@property (nonatomic, retain) NSString *messageBody;
@property (nonatomic, retain) NSString *sender;

@end

NS_ASSUME_NONNULL_END
