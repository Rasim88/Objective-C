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
        // Ввод трех чисел
        int number1 = 10;
        int number2 = 20;
        int number3 = 15;

        // Переменная для хранения наибольшего числа
        int maxNumber = number1;

        // Сравнение чисел и обновление переменной maxNumber
        if (number2 > maxNumber) {
            maxNumber = number2;
        }

        if (number3 > maxNumber) {
            maxNumber = number3;
        }

        // Вывод наибольшего числа
        NSLog(@"Наибольшее число: %d", maxNumber);
    }
    return 0;
}
