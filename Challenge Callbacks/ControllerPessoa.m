//
//  ControllerPessoa.m
//  Challenge Callbacks
//
//  Created by Eduardo Vital Alencar Cunha on 24/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import "ControllerPessoa.h"
#import "Pessoa.h"

@implementation ControllerPessoa

@synthesize pessoas = _pessoas;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pessoas = [NSMutableArray array];
        [self mostrarTodasAsPessoasPeriodicamente];
        [self registrarPessoasComEvento];
    }
    return self;
}

-(void) mostrarTodasAsPessoasPeriodicamente {
    [NSTimer scheduledTimerWithTimeInterval:10.0
                                     target:self
                                   selector:@selector(listarPessoas)
                                   userInfo:nil
                                    repeats:YES];
}

-(void) registrarPessoasComEvento {
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(registrarPessoa)
                                                name:NSSystemClockDidChangeNotification
                                              object:nil];
}


-(void) registrarPessoa {
    Pessoa *novaPessoa = [[Pessoa alloc]init];
    [_pessoas addObject:novaPessoa];

    NSLog(@"Nova pessoa registrada");
}

-(void) listarPessoas {
    printf("Nome         Sexo       Idade\n"
           "-----------------------------\n");
    for (Pessoa *pessoa in _pessoas) {
        printf("%-12s %-10s %ld\n", [[pessoa nome]UTF8String], [[pessoa sexo]UTF8String], [pessoa idade]);
    }
}


@end
