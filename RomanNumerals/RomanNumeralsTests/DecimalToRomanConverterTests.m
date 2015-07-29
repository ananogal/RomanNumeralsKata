#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DecimalToRomanConverter.h"

@interface DecimalToRomanConverterTests : XCTestCase

@end

@implementation DecimalToRomanConverterTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldConvertOneToI {
    
    DecimalToRomanConverter *converter = [[DecimalToRomanConverter alloc]init];
    
    NSString *result = [converter convert:1];
    
    XCTAssertTrue([result isEqualToString:@"I"]);
}

- (void)testShouldConvertTwoToII {
    DecimalToRomanConverter *converter = [[DecimalToRomanConverter alloc]init];
    
    NSString *result = [converter convert:2];
    
    XCTAssertTrue([result isEqualToString:@"II"]);
}

- (void)testSouldConvertThreeToIII {
    DecimalToRomanConverter *converter = [[DecimalToRomanConverter alloc]init];
    
    NSString *result = [converter convert:3];
    
    XCTAssertTrue([result isEqualToString:@"III"]);
}

@end
