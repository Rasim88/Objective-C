#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание объекта робота
        Robot *robot = [[Robot alloc] initWithName:@"Robbie" x:10 y:20];
        
        // Сохранение объекта в UserDefaults
        [robot saveToUserDefaults];
        
        // Сохранение информации о роботе в файл
        [robot saveToFile];
        
        // Загрузка информации о роботе из файла и вывод в консоль
        NSString *robotInfoFromFile = [robot readFromFile];
        NSLog(@"Robot Info from File: %@", robotInfoFromFile);
    }
    return 0;
}
