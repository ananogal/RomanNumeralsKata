#import "DecimalToRomanConverter.h"
#import "DecimalToRomanMapper.h"

@interface DecimalToRomanConverter ()

@property (nonatomic, strong) NSMutableArray* mapper;

@end

@implementation DecimalToRomanConverter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mapper = [NSMutableArray array];
        
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:1000 ToRoman:@"M"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:900 ToRoman:@"CM"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:500 ToRoman:@"D"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:400 ToRoman:@"CD"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:100 ToRoman:@"C"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:90 ToRoman:@"XC"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:50 ToRoman:@"L"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:40 ToRoman:@"XL"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:10 ToRoman:@"X"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:9 ToRoman:@"IX"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:5 ToRoman:@"V"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:4 ToRoman:@"IV"]];
        [self.mapper addObject:[DecimalToRomanMapper mappDecimal:1 ToRoman:@"I"]];
    }
    return self;
}

-(NSString*)convert:(NSInteger)decimal {

    NSString* roman = @"";
    
    for (int i = 0; i < [self.mapper count]; i++) {
        DecimalToRomanMapper *mapped = self.mapper[i];
        while (decimal >= mapped.decimal) {
            roman = [NSString stringWithFormat:@"%@%@", roman, mapped.roman];
            decimal -= mapped.decimal;
        }
    }
    return roman;
}

@end
