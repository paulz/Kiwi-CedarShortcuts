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

