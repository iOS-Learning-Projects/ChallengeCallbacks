//
//  Pessoa.m
//  Challenge Callbacks
//
//  Created by Eduardo Vital Alencar Cunha on 24/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

@synthesize nome = _nome;
@synthesize idade = _idade;
@synthesize sexo = _sexo;

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger id = arc4random_uniform(100);
        _nome = [NSString stringWithFormat:@"Pessoa %ld", id];
        if (id % 2 == 0) {
            _sexo = @"Masculino";
        } else {
            _sexo = @"Feminino";
        }
        _idade = id;
    }
    return self;
}

@end
