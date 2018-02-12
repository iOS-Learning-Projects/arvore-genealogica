//
//  main.m
//  Arvore Genealigica
//
//  Created by Eduardo Vital Alencar Cunha on 29/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pListChallenge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        [pListChallenge generateFamilyTree];

        // Caminho para pasta Documents
        NSString *documentos = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];

        // PList de Numbers
        NSMutableArray *numberList = [[NSMutableArray new] init];
        [numberList addObject:@10];
        [numberList addObject:@12];
        [numberList addObject:@99];

        // Nome da pList
        fileWithPath = [NSString stringWithFormat:@"%@/numberList.plist", documentos];

        // Salvando pList
        [numberList writeToFile:fileWithPath atomically:YES];

        
    }
    return 0;
}
