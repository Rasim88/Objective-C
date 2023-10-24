//
//  main.m
//  Lesson_2
//
//  Created by Расим on 24.10.2023.
//

#import <Foundation/Foundation.h>

// Абстрактный класс Figure
@interface Figure : NSObject

- (float)calculateArea;
- (float)calculatePerimeter;
- (void)printInfo;

@end

@implementation Figure

- (float)calculateArea {
    // Абстрактный метод, должен быть переопределен в подклассах
    return 0.0;
}

- (float)calculatePerimeter {
    // Абстрактный метод, должен быть переопределен в подклассах
    return 0.0;
}

- (void)printInfo {
    // Абстрактный метод, должен быть переопределен в подклассах
    NSLog(@"Abstract method. This should be overridden in subclasses.");
}

@end

// Класс Rectangle (прямоугольник)
@interface Rectangle : Figure

@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;

@end

@implementation Rectangle

- (float)calculateArea {
    return self.width * self.height;
}

- (float)calculatePerimeter {
    return 2 * (self.width + self.height);
}

- (void)printInfo {
    NSLog(@"Rectangle: width=%.2f, height=%.2f, area=%.2f, perimeter=%.2f", self.width, self.height, [self calculateArea], [self calculatePerimeter]);
}

@end

// Класс Circle (круг)
@interface Circle : Figure

@property (nonatomic, assign) float radius;

@end

@implementation Circle

- (float)calculateArea {
    return M_PI * self.radius * self.radius;
}

- (float)calculatePerimeter {
    return 2 * M_PI * self.radius;
}

- (void)printInfo {
    NSLog(@"Circle: radius=%.2f, area=%.2f, perimeter=%.2f", self.radius, [self calculateArea], [self calculatePerimeter]);
}

@end

// Класс Triangle (треугольник)
@interface Triangle : Figure

@property (nonatomic, assign) float side1;
@property (nonatomic, assign) float side2;
@property (nonatomic, assign) float side3;

@end

@implementation Triangle

- (float)calculateArea {
    float p = [self calculatePerimeter] / 2;
    return sqrtf(p * (p - self.side1) * (p - self.side2) * (p - self.side3));
}

- (float)calculatePerimeter {
    return self.side1 + self.side2 + self.side3;
}

- (void)printInfo {
    NSLog(@"Triangle: side1=%.2f, side2=%.2f, side3=%.2f, area=%.2f, perimeter=%.2f", self.side1, self.side2, self.side3, [self calculateArea], [self calculatePerimeter]);
}

@end

// Создание массива фигур и вывод информации о них
int main() {
    @autoreleasepool {
        int n = 3; // Количество фигур в массиве
        Figure *figures[n];
        
        // Создание объектов фигур
        Rectangle *rectangle = [[Rectangle alloc] init];
        rectangle.width = 5;
        rectangle.height = 10;
        
        Circle *circle = [[Circle alloc] init];
        circle.radius = 7;
        
        Triangle *triangle = [[Triangle alloc] init];
        triangle.side1 = 3;
        triangle.side2 = 4;
        triangle.side3 = 5;
        
        // Добавление фигур в массив
        figures[0] = rectangle;
        figures[1] = circle;
        figures[2] = triangle;
        
        // Вывод информации о фигурах на экран
        for (int i = 0; i < n; i++) {
            [figures[i] printInfo];
        }
    }
    
    return 0;
}
