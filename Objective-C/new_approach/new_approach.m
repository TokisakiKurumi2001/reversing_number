#include <Foundation/Foundation.h>
#include "Reverse.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Reverse * rev = [[Reverse alloc] init];
        NSString * num = @"123456789";
        NSString * res = [rev reverseNum:num];
        NSLog(@"%@", res);
    }
}
