#import "DecimalToRomanConverter.h"
#import "DecimalToRopmanMapper.h"

@interface DecimalToRomanConverter ()

@property (nonatomic, strong) NSMutableArray* mapper;

@end

@implementation DecimalToRomanConverter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mapper = [NSMutableArray array];
        
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:1000 ToRoman:@"M"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:900 ToRoman:@"CM"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:500 ToRoman:@"D"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:400 ToRoman:@"CD"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:100 ToRoman:@"C"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:90 ToRoman:@"XC"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:50 ToRoman:@"L"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:40 ToRoman:@"XL"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:10 ToRoman:@"X"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:9 ToRoman:@"IX"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:5 ToRoman:@"V"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:4 ToRoman:@"IV"]];
        [self.mapper addObject:[DecimalToRopmanMapper mappDecimal:1 ToRoman:@"I"]];
    }
    return self;
}

-(NSString*)convert:(NSInteger)decimal {

    NSString* roman = @"";
    
    for (int i = 0; i < [self.mapper count]; i++) {
        DecimalToRopmanMapper *mapped = self.mapper[i];
        while (decimal >= mapped.decimal) {
            roman = [NSString stringWithFormat:@"%@%@", roman, mapped.roman];
            decimal -= mapped.decimal;
        }
    }
    return roman;
}

@end
