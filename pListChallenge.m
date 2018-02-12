//
//  pListChallenge.m
//  Arvore Genealogica
//
//  Created by Eduardo Vital Alencar Cunha on 29/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import "pListChallenge.h"

@implementation pListChallenge

+ (void)generateFamilyTree {
    // Adicionando informações do primeiro filho
    NSMutableDictionary *filho0 = [[NSMutableDictionary new] init];
    [filho0 setObject:@"Eduardo Vital" forKey:@"nome"];
    [filho0 setObject:@"vitaldu@gmail.com" forKey:@"email"];
    [filho0 setObject:@"22" forKey:@"idade"];
    [filho0 setObject:@"3333-9021" forKey:@"telefone"];

    // Adicionando informações do segundo filho
    NSMutableDictionary *filho1 = [[NSMutableDictionary new] init];
    [filho1 setObject:@"Rafale Vital" forKey:@"nome"];
    [filho1 setObject:@"rafa.filho@mail.com" forKey:@"email"];
    [filho1 setObject:@"26" forKey:@"idade"];
    [filho1 setObject:@"3333-9121" forKey:@"telefone"];

    // Criando array dos filhos
    NSMutableArray *filhos = [[NSMutableArray new] init];
    [filhos addObject:filho0];
    [filhos addObject:filho1];

    // Adicionando informações do pai
    NSMutableDictionary *pai0 = [[NSMutableDictionary new] init];
    [pai0 setObject:@"Carlos Felipe" forKey:@"nome"];
    [pai0 setObject:@"carlos.pai@mail.com" forKey:@"email"];
    [pai0 setObject:@"50" forKey:@"idade"];
    [pai0 setObject:@"3333-8021" forKey:@"telefone"];

    // Adicionando informações da mãe
    NSMutableDictionary *pai1 = [[NSMutableDictionary new] init];
    [pai1 setObject:@"Alcileide Vital" forKey:@"nome"];
    [pai1 setObject:@"leide.mae@mail.com" forKey:@"email"];
    [pai1 setObject:@"49" forKey:@"idade"];
    [pai1 setObject:@"3333-8099" forKey:@"telefone"];

    // Criando dicionario dos pais
    NSMutableDictionary *pais = [[NSMutableDictionary new] init];
    [pais setObject:pai0 forKey:@"pai"];
    [pais setObject:pai1 forKey:@"mãe"];
    [pais setObject:filhos forKey:@"filhos"];

    // Adicionando informações da avó
    NSMutableDictionary *avo0 = [[NSMutableDictionary new] init];
    [avo0 setObject:@"Francisca Lima" forKey:@"nome"];
    [avo0 setObject:@"francisca.avo@mail.com" forKey:@"email"];
    [avo0 setObject:@"68" forKey:@"idade"];
    [avo0 setObject:@"3333-0021" forKey:@"telefone"];

    // Adicionando informações do avô
    NSMutableDictionary *avo1 = [[NSMutableDictionary new] init];
    [avo1 setObject:@"Joao Santos" forKey:@"nome"];
    [avo1 setObject:@"joao.avo@mail.com" forKey:@"email"];
    [avo1 setObject:@"80" forKey:@"idade"];
    [avo1 setObject:@"3333-1021" forKey:@"telefone"];
    
    // Criando dicionario dos avos
    NSMutableDictionary *avos = [[NSMutableDictionary new] init];
    [avos setObject:avo0 forKey:@"avó"];
    [avos setObject:avo1 forKey:@"avô"];
    [avos setObject:pais forKey:@"pais"];

    NSFileManager *fileManager = [[NSFileManager new] init];

    NSString *fileWithPath = [NSString stringWithFormat:@"%@/arvore.plist", [fileManager currentDirectoryPath]];
    [avos writeToFile:fileWithPath atomically:YES];
}

@end
