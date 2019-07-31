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
 @brief 無効な文字を入力しないようにする
 @param partialStringPtr 検証する新しい文字列
 @param proposedSelRangePtr 文字列が受け入れられるか置き換えられる場合に使用される選択範囲。
 @param origString 変更が提案される前の元の文字列。
 @param origSelRange 変更が行われる選択範囲。
 */
- (BOOL)isPartialStringValid:(NSString **)partialStringPtr
       proposedSelectedRange:(NSRangePointer)proposedSelRangePtr
              originalString:(NSString *)origString
       originalSelectedRange:(NSRange)origSelRange
            errorDescription:(NSString **)error {
    // 2文字以上貼り付けがあった場合の処理
    // TODO write...
//    origSelRange.length
    
    int overLength = (int)[*partialStringPtr length] - (int)_charLimit;
    if (overLength > 0) {
        return NO;
    }

    if (![*partialStringPtr isEqual:[*partialStringPtr uppercaseString]]) {
        *partialStringPtr = [*partialStringPtr uppercaseString];
        return NO;
    }
    return YES;
}

// MARK:- NSFormatterのカスタムクラス作成に必須なメソッド
// セルのオブジェクトを文字列表現に変換（数値→文字列）
- (NSString *)stringForObjectValue:(id)object {
    return (NSString *)object;
}

// 文字列をセルに関連付けられたオブジェクトに変換（文字列→数値）
- (BOOL)getObjectValue:(id *)object
             forString:(NSString *)string
      errorDescription:(NSString **)error {
    *object = string;
    return YES;
}

@end
