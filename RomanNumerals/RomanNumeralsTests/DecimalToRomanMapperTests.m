#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DecimalToRomanMapper.h"

@interface DecimalToRomanMapperTests : XCTestCase

@end

@implementation DecimalToRomanMapperTests

- (void)testClassShouldCreateANewInstanteOfItSelf {
    
    XCTAssertTrue([[DecimalToRomanMapper mappDecimal:1 toRoman:@"I"] isKindOfClass:[DecimalToRomanMapper class]]);
}

- (void)testDecimalToRomanMapperShouldInitWithaDecimalAndARoman {
    DecimalToRomanMapper *defaultDecimalToRoman = [[DecimalToRomanMapper alloc] init];
    
    XCTAssertEqual(defaultDecimalToRoman.decimal, 0);
    XCTAssertEqual(defaultDecimalToRoman.roman, @"");
}
@end
