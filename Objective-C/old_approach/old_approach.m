#include <Foundation/Foundation.h>

@interface Reverse : NSObject
-(NSNumber *)reverseNum:(NSNumber *)num;
@end

@implementation Reverse
-(NSNumber *)reverseNum:(NSNumber *)num;
{
	int number = [num intValue];
	int sum = 0;
	int digit = 0;

	while (number != 0)
	{
		digit = number % 10;
		sum = sum * 10 + digit;
		number /= 10;
	}

	NSNumber * return_num = [NSNumber numberWithInt:sum];
	return return_num;
}
@end

int main(int argc, const char * argv[])
{
	@autoreleasepool
	{
		Reverse * rev = [[Reverse alloc] init];
		NSNumber * num = @123456789;
		NSNumber * res = [rev reverseNum:num];
		NSLog(@"%@", res);
	}
}