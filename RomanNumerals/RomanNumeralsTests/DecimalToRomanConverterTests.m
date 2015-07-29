#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <XCParameterizedTestCase/XCParameterizedTestCase.h>
#import "DecimalToRomanConverter.h"

@interface DecimalToRomanConverterTests : XCParameterizedTestCase

@end

@implementation DecimalToRomanConverterTests

+ (NSArray *)testCaseData {
    return @[
             [XCTestCaseData createWithInputValue:@1 withExpectedValue:@"I"],
             [XCTestCaseData createWithInputValue:@2 withExpectedValue:@"II"],
             [XCTestCaseData createWithInputValue:@3 withExpectedValue:@"III"],
             [XCTestCaseData createWithInputValue:@5 withExpectedValue:@"V"],
             [XCTestCaseData createWithInputValue:@8 withExpectedValue:@"VIII"],
             [XCTestCaseData createWithInputValue:@10 withExpectedValue:@"X"],
             [XCTestCaseData createWithInputValue:@18 withExpectedValue:@"XVIII"],
             [XCTestCaseData createWithInputValue:@4 withExpectedValue:@"IV"],
             [XCTestCaseData createWithInputValue:@9 withExpectedValue:@"IX"],
             [XCTestCaseData createWithInputValue:@50 withExpectedValue:@"L"],
             [XCTestCaseData createWithInputValue:@100 withExpectedValue:@"C"],
             [XCTestCaseData createWithInputValue:@500 withExpectedValue:@"D"],
             [XCTestCaseData createWithInputValue:@2499 withExpectedValue:@"MMCDXCIX"],
             [XCTestCaseData createWithInputValue:@3949 withExpectedValue:@"MMMCMXLIX"]
             ];
}

- (void)testShouldConvertADecimalIntoARoman {
    
    DecimalToRomanConverter *converter = [[DecimalToRomanConverter alloc]init];
    NSString* result = [converter convert:[self.input integerValue]];
    
    XCTAssertEqualObjects(self.expected, result);
}
@end
