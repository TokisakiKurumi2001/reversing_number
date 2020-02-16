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
    NSMutableArray * arr = [str NSString2NSMutableArray:num];
    
    NSUInteger len = [num length];
    int bound = (int)len / 2;
    int i = 0;
    int symmetry = (int)len - 1 - i;

    NSString * temp;

    for (i = 0; i < bound; i++)
    {
        symmetry = (int)len - 1 - i;
        temp = arr[i];
        arr[i] = arr[symmetry];
        arr[symmetry] = temp;
    }

    NSString * return_str = [str NSMutableArray2NSString:arr withLen:len];
    return return_str;
}
@end

#endif
