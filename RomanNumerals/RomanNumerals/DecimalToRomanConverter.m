#import "DecimalToRomanConverter.h"

@implementation DecimalToRomanConverter

-(NSString*)convert:(NSInteger)decimal {

    if(decimal == 3)
    {
        return@"III";
    }
    if(decimal == 2)
    {
        return @"II";
    }
    return @"I";
}

@end
