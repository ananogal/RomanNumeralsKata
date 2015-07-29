#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DecimalToRomanConverter.h"

@interface DecimalToRomanConverterTests : XCTestCase

@end

@implementation DecimalToRomanConverterTests

DecimalToRomanConverter *converter;

- (void)setUp {
    [super setUp];
    converter = [[DecimalToRomanConverter alloc]init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldConvertOneToI {
    
    NSString *result = [converter convert:1];
    
    XCTAssertTrue([result isEqualToString:@"I"]);
}

- (void)testShouldConvertTwoToII {
    
    NSString *result = [converter convert:2];
    
    XCTAssertTrue([result isEqualToString:@"II"]);
}

- (void)testSouldConvertThreeToIII {
    
    NSString *result = [converter convert:3];
    
    XCTAssertTrue([result isEqualToString:@"III"]);
}

- (void)testSouldConvertFiveToV {
    
    NSString *result = [converter convert:5];
    
    XCTAssertTrue([result isEqualToString:@"V"]);
}

- (void)testSouldConvertEightToVIII {
    
    NSString *result = [converter convert:8];
    
    XCTAssertTrue([result isEqualToString:@"VIII"]);
}

- (void)testSouldConvertTenToX {
    
    NSString *result = [converter convert:10];
    
    XCTAssertTrue([result isEqualToString:@"X"]);
}


- (void)testSouldConvertEighteenToXVIII {
    
    NSString *result = [converter convert:18];
    
    XCTAssertTrue([result isEqualToString:@"XVIII"]);
}

@end
