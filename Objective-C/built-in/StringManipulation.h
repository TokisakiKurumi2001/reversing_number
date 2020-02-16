#ifndef StringManipultation_h
#define StringManipultation_h

#include <Foundation/Foundation.h>


@interface StringManipulation : NSObject
-(NSArray *)NSString2NSArray: (NSString *)my_str;
-(NSString *)NSEnumerator2NSString: (NSArray *)my_arr withLen:(NSUInteger)len;
@end

@implementation StringManipulation
-(NSArray *)NSString2NSArray: (NSString *)my_str;
{
    NSUInteger len = [my_str length];
    NSMutableArray * characters = [[NSMutableArray alloc] initWithCapacity:len];
    
    int i = 0;
    for (i = 0; i < len; i++)
    {
        unichar the_char = [my_str characterAtIndex:i];
        NSString * my_char = [NSString stringWithFormat:@"%c",the_char];
        [characters addObject:my_char];
    }

    NSArray * the_arr = [characters copy];
    return the_arr;
}
-(NSString *)NSEnumerator2NSString: (NSEnumerator *)my_enumerator withLen:(NSUInteger)len;
{
    NSMutableString * the_str = [NSMutableString stringWithCapacity:len];
    
    int i = 0;
    for (i =  0; i < len; i++)
    {
        NSString * my_char = [my_enumerator nextObject];
        [the_str appendString:my_char];
    }

    NSString * my_str = [the_str copy];
    return my_str;
}
@end

#endif
