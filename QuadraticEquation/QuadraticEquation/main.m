//
//  main.m
//  QuadraticEquation
//
//  Created by Михаил Чертов on 28.01.2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double a, b, c;
                NSLog(@"Введите коэффициенты для уравнения ax^2 + bx + c = 0:");
                NSLog(@"a = ");
        
                scanf("%lf", &a);
                NSLog(@"b = ");
        
                scanf("%lf", &b);
                NSLog(@"c = ");
                scanf("%lf", &c);
                
                double discriminant = b * b - 4 * a * c;
                
                if (discriminant > 0) {
                    double x1 = (-b + sqrt(discriminant)) / (2 * a);
                    double x2 = (-b - sqrt(discriminant)) / (2 * a);
                    NSLog(@"У уравнения два корня: x1 = %lf, x2 = %lf", x1, x2);
                } else if (discriminant == 0) {
                    double x = -b / (2 * a);
                    NSLog(@"У уравнения один корень: x = %lf", x);
                } else {
                    NSLog(@"У уравнения нет действительных корней");
                }
            }
    return 0;
}
