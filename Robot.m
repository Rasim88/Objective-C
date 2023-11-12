//
//  Robot.m
//  les
//
//  Created by Расим on 12.11.2023.
//
//
// Robot.m

#import "Robot.h"

@implementation Robot

- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y {
    self = [super init];
    if (self) {
        _name = name;
        _x = x;
        _y = y;
    }
    return self;
}

- (void)saveToUserDefaults {
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:self];
    [[NSUserDefaults standardUserDefaults] setObject:robotData forKey:self.name];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)saveToFile {
    NSString *documentsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString *filePath = [documentsPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt", self.name]];
    NSString *robotInfo = [NSString stringWithFormat:@"Name: %@, X: %ld, Y: %ld", self.name, (long)self.x, (long)self.y];
    [robotInfo writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (NSString *)readFromFile {
    NSString *documentsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString *filePath = [documentsPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt", self.name]];
    NSError *error;
    NSString *robotInfo = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        return [NSString stringWithFormat:@"Error reading robot info from file: %@", error.localizedDescription];
    } else {
        return robotInfo;
    }
}

@end
