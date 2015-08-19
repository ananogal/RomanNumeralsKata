#import "DecimalToRomanConverter.h"
#import "DecimalToRomanMapper.h"

@interface DecimalToRomanConverter ()

@property (nonatomic, strong) NSArray* mapper;

@end

@implementation DecimalToRomanConverter

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.mapper = @[
                        [DecimalToRomanMapper mappDecimal:1000 toRoman:@"M"],
                        [DecimalToRomanMapper mappDecimal:1000 toRoman:@"M"],
                        [DecimalToRomanMapper mappDecimal:900 toRoman:@"CM"],
                        [DecimalToRomanMapper mappDecimal:500 toRoman:@"D"],
                        [DecimalToRomanMapper mappDecimal:400 toRoman:@"CD"],
                        [DecimalToRomanMapper mappDecimal:100 toRoman:@"C"],
                        [DecimalToRomanMapper mappDecimal:90 toRoman:@"XC"],
                        [DecimalToRomanMapper mappDecimal:50 toRoman:@"L"],
                        [DecimalToRomanMapper mappDecimal:40 toRoman:@"XL"],
                        [DecimalToRomanMapper mappDecimal:10 toRoman:@"X"],
                        [DecimalToRomanMapper mappDecimal:9 toRoman:@"IX"],
                        [DecimalToRomanMapper mappDecimal:5 toRoman:@"V"],
                        [DecimalToRomanMapper mappDecimal:4 toRoman:@"IV"],
                        [DecimalToRomanMapper mappDecimal:1 toRoman:@"I"]
                        ];
    }
    
    return self;
}

-(NSString*)convert:(NSInteger)decimal {

    NSString* roman = @"";
    
    for (int i = 0; i < [self.mapper count]; i++) {
        DecimalToRomanMapper *decimalToRoman = self.mapper[i];
        while (decimal >= decimalToRoman.decimal) {
            roman = [NSString stringWithFormat:@"%@%@", roman, decimalToRoman.roman];
            decimal -= decimalToRoman.decimal;
        }
    }
    return roman;
}

@end
