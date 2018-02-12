//
//  main.m
//  Challenge Callbacks
//
//  Created by Eduardo Vital Alencar Cunha on 24/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ControllerPessoa.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ControllerPessoa *pessoas = [[ControllerPessoa alloc]init];
        [[NSRunLoop currentRunLoop]run];
    }
    return 0;
}
