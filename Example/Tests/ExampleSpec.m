//
//  Kiwi-CedarShortcutsTests.m
//  Kiwi-CedarShortcutsTests
//
//  Created by Paul Zabelin on 11/14/2015.
//  Copyright (c) 2015 Paul Zabelin. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

@import Kiwi;
#import "KiwiMacros.h"

SPEC_BEGIN(ExampleSpec)

describe(@"Example", ^{
    context(@"within CedarShortCuts Xcode plugin with Control-Option-U", ^{
        NSProcessInfo *processInfo = [NSProcessInfo processInfo];
        NSDictionary *environment = [processInfo environment];
        NSString *cedarSpecFile = environment[@"CEDAR_SPEC_FILE"];

        if (cedarSpecFile) {
            it(@"should define CEDAR_SPEC_FILE have this file path as prefix", ^{
                [[cedarSpecFile should] startWithString:[self file]];
            });
        }
    });
    
    context(@"file", ^{
        it(@"should equal __FILE__", ^{
            [[[self file] should] equal:@__FILE__];
        });
    });
    
    context(@"will pass", ^{
        it(@"can do maths", ^{
            [[@1 should] beLessThan:@23];
        });
        
        it(@"can read", ^{
            [[@"team" shouldNot] containString:@"I"];
        });
    });
    
});

SPEC_END

