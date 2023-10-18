//
//  main.m
//  Lesson_1
//
//  Created by Расим on 18.10.2023.
//
// Задание
//
// Решить квадратные уравнения: x^2 – 8x + 12 = 0, 12x^2 – 4x + 2 = 0, x^2 – 100x - 2 = 0 (заменять константы в коде).
// Создать программу, которая находит большее число среди 3-х чисел.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Решение уравнения x^2 – 8x + 12 = 0
        float a1 = 1;
        float b1 = -8;
        float c1 = 12;

        float discriminant1 = b1 * b1 - 4 * a1 * c1;

        if (discriminant1 >= 0) {
            float root1 = (-b1 + sqrt(discriminant1)) / (2 * a1);
            float root2 = (-b1 - sqrt(discriminant1)) / (2 * a1);

            NSLog(@"Уравнение x^2 – 8x + 12 = 0 имеет два корня: %.2f и %.2f", root1, root2);
        } else {
            NSLog(@"Уравнение x^2 – 8x + 12 = 0 не имеет вещественных корней.");
        }

        // Решение уравнения 12x^2 – 4x + 2 = 0
        float a2 = 12;
        float b2 = -4;
        float c2 = 2;

        float discriminant2 = b2 * b2 - 4 * a2 * c2;

        if (discriminant2 >= 0) {
            float root3 = (-b2 + sqrt(discriminant2)) / (2 * a2);
            float root4 = (-b2 - sqrt(discriminant2)) / (2 * a2);

            NSLog(@"Уравнение 12x^2 – 4x + 2 = 0 имеет два корня: %.2f и %.2f", root3, root4);
        } else {
            NSLog(@"Уравнение 12x^2 – 4x + 2 = 0 не имеет вещественных корней.");
        }

        // Решение уравнения x^2 – 100x - 2 = 0
        float a3 = 1;
        float b3 = -100;
        float c3 = -2;

        float discriminant3 = b3 * b3 - 4 * a3 * c3;

        if (discriminant3 >= 0) {
            float root5 = (-b3 + sqrt(discriminant3)) / (2 * a3);
            float root6 = (-b3 - sqrt(discriminant3)) / (2 * a3);

            NSLog(@"Уравнение x^2 – 100x - 2 = 0 имеет два корня: %.2f и %.2f", root5, root6);
        } else {
            NSLog(@"Уравнение x^2 – 100x - 2 = 0 не имеет вещественных корней.");
        }
    }
    return 0;
}
