// Robot.h

#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property(nonatomic) NSInteger x;
@property(nonatomic) NSInteger y;
@property(nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y;
- (void)saveToUserDefaults;
- (void)saveToFile;
- (NSString *)readFromFile;

@end
