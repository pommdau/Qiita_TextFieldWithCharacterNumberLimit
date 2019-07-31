//
//  CustomTextFieldFormatter.m
//  TextFieldWithCharacterNumberLimit
//
//  Created by HIROKI IKEUCHI on 2019/07/29.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "CustomTextFieldFormatter.h"

@interface CustomTextFieldFormatter ()
@property NSUInteger charLimit; // 制限文字数
@end

@implementation CustomTextFieldFormatter
- (id)init {
    if(self = [super init]){
        [self setCharLimit:3];
    }
    return self;
}

/**
 @brief 部分文字列が有効かどうか - ユーザがキーを押す際に呼ばれる
 @param partialString 現在セル内にあるテキスト
 @param newString partialStringの変更が必要なときの置換文字列
 @return 部分文字列が有効かどうか
 */
- (BOOL)isPartialStringValid:(NSString *)partialString
            newEditingString:(NSString **)newString
            errorDescription:(NSString **)error {
    if ((int)[partialString length] > _charLimit) {
        *newString = [partialString substringToIndex:_charLimit];
        return NO;  // newStringでpartialStringを置換
    }
    return YES;
}

// MARK:- NSFormatter Methods
// NSFormatterのカスタムクラス作成に必須なメソッド

/**
 @brief セルのオブジェクトを文字列表現に変換（数値→文字列）
 */
- (NSString *)stringForObjectValue:(id)object {
    return (NSString *)object;
}

/**
 @brief 文字列をセルに関連付けられたオブジェクトに変換（文字列→数値）
 */
- (BOOL)getObjectValue:(id *)object
             forString:(NSString *)string
      errorDescription:(NSString **)error {
    *object = string;
    return YES;
}

@end
