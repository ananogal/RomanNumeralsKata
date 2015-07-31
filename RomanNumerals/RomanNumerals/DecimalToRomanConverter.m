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
                        [DecimalToRomanMapper mappDecimal:1000 ToRoman:@"M"],
                        [DecimalToRomanMapper mappDecimal:1000 ToRoman:@"M"],
                        [DecimalToRomanMapper mappDecimal:900 ToRoman:@"CM"],
                        [DecimalToRomanMapper mappDecimal:500 ToRoman:@"D"],
                        [DecimalToRomanMapper mappDecimal:400 ToRoman:@"CD"],
                        [DecimalToRomanMapper mappDecimal:100 ToRoman:@"C"],
                        [DecimalToRomanMapper mappDecimal:90 ToRoman:@"XC"],
                        [DecimalToRomanMapper mappDecimal:50 ToRoman:@"L"],
                        [DecimalToRomanMapper mappDecimal:40 ToRoman:@"XL"],
                        [DecimalToRomanMapper mappDecimal:10 ToRoman:@"X"],
                        [DecimalToRomanMapper mappDecimal:9 ToRoman:@"IX"],
                        [DecimalToRomanMapper mappDecimal:5 ToRoman:@"V"],
                        [DecimalToRomanMapper mappDecimal:4 ToRoman:@"IV"],
                        [DecimalToRomanMapper mappDecimal:1 ToRoman:@"I"]
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
