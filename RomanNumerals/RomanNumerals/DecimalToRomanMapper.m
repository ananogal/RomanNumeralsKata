#import "DecimalToRomanMapper.h"

@interface DecimalToRomanMapper()

@property (nonatomic, assign, readwrite) NSInteger decimal;
@property (nonatomic, copy, readwrite) NSString* roman;

@end

@implementation DecimalToRomanMapper

+ (instancetype)mappDecimal:(NSInteger)decimal toRoman:(NSString*)roman {
    return [[self alloc] initWithDecimal:decimal andRoman:roman];
}

- (instancetype)initWithDecimal:(NSInteger)decimal andRoman:(NSString*)roman
{
    self = [super init];
    if (self) {
        self.decimal = decimal;
        self.roman = roman;
    }
    return self;
}

- (instancetype)init
{
    return [self initWithDecimal:0 andRoman:@""];
}

@end
