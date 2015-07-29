#import "DecimalToRomanConverter.h"

@implementation DecimalToRomanConverter

-(NSString*)convert:(NSInteger)decimal {

    NSString* roman = @"";
    
    if(decimal >= 10)
    {
        roman = [NSString stringWithFormat:@"%@%@", roman, @"X"];
        decimal -= 10;
    }
    
    if(decimal >= 5)
    {
        roman = [NSString stringWithFormat:@"%@%@", roman, @"V"];
        decimal -=5;
    }
    
    for (int i = 0; i < decimal; i ++) {
        roman = [NSString stringWithFormat:@"%@%@", roman, @"I"];
    }
    
    return roman;
}

@end
