#import <Foundation/Foundation.h>

@interface DecimalToRopmanMapper : NSObject

@property (nonatomic, assign, readonly) NSInteger decimal;
@property (nonatomic, copy, readonly) NSString* roman;

+ (instancetype)mappDecimal:(NSInteger)decimal ToRoman:(NSString*)roman;
@end
