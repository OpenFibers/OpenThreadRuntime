//
//  1.m
//  Pomodoro
//
//  Created by OpenThread on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "OTRuntimeSel.h"

int sel_getArgumentsCount(SEL aSelector)
{
    const char *nameOfSelector = sel_getName(aSelector);
    int i = 0;
    while (*nameOfSelector != '\0') {
        if (*nameOfSelector == ':') {
            i++;
        }
        nameOfSelector++;
    }
    return i;
}