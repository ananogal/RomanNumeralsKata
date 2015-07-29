#import "DecimalToRomanConverter.h"

@implementation DecimalToRomanConverter

-(NSString*)convert:(NSInteger)decimal {

    NSString* roman = @"";
    for (int i = 0; i < decimal; i ++) {
        roman = [NSString stringWithFormat:@"%@%@", roman, @"I"];
    }
    
    return roman;
}

@end
