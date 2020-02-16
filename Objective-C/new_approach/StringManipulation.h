#ifndef StringManipulation_h
#define StringManipulation_h

#include <Foundation/Foundation.h>

@interface StringManipulation : NSObject
-(NSMutableArray *)NSString2NSMutableArray:(NSString *)my_str;
-(NSString *)NSMutableArray2NSString:(NSMutableArray *)my_arr withLen:(NSUInteger)len;
@end

@implementation StringManipulation
-(NSMutableArray *)NSString2NSMutableArray: (NSString *)my_str;
{
    NSUInteger len = [my_str length];
    NSMutableArray * characters = [[NSMutableArray alloc] initWithCapacity:len];

    int i = 0;
    for(i = 0; i < len; i++)
    {
        unichar the_char = [my_str characterAtIndex:i];
        NSString * my_char = [NSString stringWithFormat:@"%c",the_char];
        [characters addObject:my_char];
    }

    return characters;
}

-(NSString *)NSMutableArray2NSString: (NSMutableArray *)my_arr withLen:(NSUInteger)len;
{
    NSMutableString * the_str = [NSMutableString stringWithCapacity:len];
    
    int i = 0;
    for(i =  0; i < len; i++)
    {
        NSString * my_char = [my_arr objectAtIndex:i];
        [the_str appendString:my_char];
    }

    NSString * my_str = [the_str copy];
    return my_str;
}
@end

#endif
