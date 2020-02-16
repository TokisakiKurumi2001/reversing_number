#ifndef Reverse_h
#define Reverse_h

#include <Foundation/Foundation.h>
#include "StringManipulation.h"

@interface Reverse : NSObject
-(NSString *)reverseNum:(NSString *)num;
@end

@implementation Reverse
-(NSString *)reverseNum:(NSString *)num;
{
    StringManipulation * str = [[StringManipulation alloc] init];
    NSUInteger len = [num length];
    NSArray * arr = [str NSString2NSArray:num];
    NSEnumerator * reverse = [arr reverseObjectEnumerator];
    NSString * return_str = [str NSEnumerator2NSString:reverse withLen:len];
    return return_str;
}
@end

#endif