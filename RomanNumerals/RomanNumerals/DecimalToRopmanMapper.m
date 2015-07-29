#import "DecimalToRopmanMapper.h"

@interface DecimalToRopmanMapper()

@property (nonatomic, assign, readwrite) NSInteger decimal;
@property (nonatomic, copy, readwrite) NSString* roman;

@end

@implementation DecimalToRopmanMapper

+ (instancetype)mappDecimal:(NSInteger)decimal ToRoman:(NSString*)roman {
    return [[self alloc] initWithDecimal:decimal AndRoman:roman];
}

- (instancetype)initWithDecimal:(NSInteger)decimal AndRoman:(NSString*)roman
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
    return [self initWithDecimal:0 AndRoman:nil];
}

@end
