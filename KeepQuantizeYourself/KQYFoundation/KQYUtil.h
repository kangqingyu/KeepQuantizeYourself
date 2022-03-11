//
//  KQYUtil.h
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/2/27.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RACmetamacros.h"

#import "UIColor+KQYHex.h"

#define KQYFONT(...)        metamacro_concat(KQYFONT_, metamacro_argcount(__VA_ARGS__))(__VA_ARGS__)
#define DDWFONT(...)        metamacro_concat(DDWFONT_, metamacro_argcount(__VA_ARGS__))(__VA_ARGS__)


#define KQYHEX(...)         metamacro_concat(KQYHEX_, metamacro_argcount(__VA_ARGS__))(__VA_ARGS__)

//#define DDWFONT_1(A)        [UIFont ddwFontWithSize:A]
//#define DDWFONT_2(A, B)     [UIFont ddwFontWithSize:A weight:B]
//#define DDWFONT_3(A, B, C)  [UIFont ddwFontWithName:A size:B weight:C]

///> Do not use this directly. Use the DDWFONT macro above.
#define KQYFONT_1(A)        [UIFont systemFontOfSize:A]
#define KQYFONT_2(A, B)     [UIFont systemFontOfSize:A weight:B]

#define KQYHEX_1(A)         [UIColor one_colorWithHexString:A]
#define KQYHEX_2(A, B)      [[UIColor one_colorWithHexString:A] colorWithAlphaComponent:B]



NS_ASSUME_NONNULL_BEGIN

@interface KQYUtil : NSObject

@end

NS_ASSUME_NONNULL_END
