//
//  KWSpec+CedarShortcuts.m
//  RecordListen
//
//  Created by Paul Zabelin on 11/7/15.
//  Copyright © 2015 iPhone Developer. All rights reserved.
//

#import <Kiwi/Kiwi.h>

@interface KWSpec (CedarShortcuts)
@end

@implementation KWSpec (CedarShortcuts)
+ (instancetype)testCaseWithInvocation:(nullable NSInvocation *)invocation {
    NSProcessInfo *processInfo = [NSProcessInfo processInfo];
    NSDictionary *environment = [processInfo environment];
    NSString *cedarSpecFile = environment[@"CEDAR_SPEC_FILE"];
    if (cedarSpecFile) {
        NSString *focusFilePath = [[NSURL URLWithString:cedarSpecFile] path];
        if (![focusFilePath hasPrefix:[self file]]) {
            return nil;
        }
    }
    return [super testCaseWithInvocation:invocation];
}
@end
