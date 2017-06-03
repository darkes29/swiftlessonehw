//
//    fn.swift
//  SwiftLevelOne_hw_hw1
//
//  Created by Александр Ломтев on 03.06.17.
//  Copyright © 2017 Александр Ломтев. All rights reserved.
//

import Foundation


class UrQuard
{
    var a: Double = 0
    var b: Double = 0
    var c: Double = 0
    func exit(){
        print("До встречи!")
    }
    func menu()
    {
    print("1 Решить квадратное уравнение")
    print("2 Найти гиппотенузу, площадь и периметр прямоугольного прямоугольника")
    print("3 Рассчет суммы вклада")
    print("4 выйти из программы")
        let sd:Character = Character(readLine()!)
        if (sd == "1") {
            ur()
        }
        if (sd == "2"){
            triangle()
        }
        if (sd=="3"){
        vclad()
        }
        if (sd == "4")
        {
            exit()
        }
    }
    func vclad(){
    print("Программа позволяет расчитать сумму вклада через 5 лет, используя начальную сумму вклада и годовой процент")
        print("Введите сумму вклада (руб)", terminator: "")
        a = Double(readLine()!)!
        print("Введите годовой процент вклада ", terminator: "")
        b = Double(readLine()!)!
        c = a+5*(a*b/100)
        print("Начальная сумма: ",a, "руб.","Годовой процент: ",b,"%","Сумма процентов за 5 лет: ", c-a, "руб.", "Сумма с учетом процентов за пять лет: ", c, "руб")
        print("Найти еще раз? Y(Да) q(завершить программу m(Выйти в главное меню):", terminator:" ")
        let sd:Character = Character(readLine()!)
        if (sd == "Y" || sd == "y") {
            vclad()
        }
        if (sd=="m" || sd == "M"){
            menu()
        }
        if (sd=="q" || sd == "Q")
        {
            exit()
        }

    }
    
    func triangle()
    {
     print("Эта программа позволяет найти площадь, длину гиппотенузы и периметр прямоугольного прямоугольника по его катетам")
        print ("Введите первый катет ", terminator: " ")
        a = Double(readLine()!)!
        print ("Введите второй катет ", terminator: " ")
        b = Double(readLine()!)!
        c = a*a+b*b
        print("Гиппотенуза прямоугольного прямоугольника = ",c)
        let p = a+b+c
        print("Периметр прямоугольного прямоугольника =", p)
        let pl = (a*b)/2
    print("Площадь прямоугольного прямоугольника = ", pl)
        print("Найти еще раз? Y(Да) q(завершить программу m(Выйти в главное меню):", terminator:" ")
        let sd:Character = Character(readLine()!)
        if (sd == "Y" || sd == "y") {
            triangle()
        }
        if (sd=="m" || sd == "M"){
            menu()
        }
        if (sd=="q" || sd == "Q")
        {
            exit()
        }


    
    }
    
    func ur(){
        
        print("Эта программа решает квадратные уравнения вида ax^2+bx+c=0")
        print ("Введите переменную a ", terminator: " ")
        a = Double(readLine()!)!
        print ("Введите переменную b ", terminator:" ")
        b = Double(readLine()!)!
        print ("Введите переменную c ", terminator: " ")
        c = Double(readLine()!)!
        var d: Double = 0
        d = 4*a*(c*c)
        print("Дискриминант равен ", d)
        if d > 0 {
            let x1:Double = ((-b)+(sqrt(d))/(a))
            let x2:Double = ((-b)-(sqrt(d))/(a))
            print("x1 =", x1,"\nx2 = ",x2)
        }
        if d == 0 {
            let x1:Double = ((-b)+(sqrt(d))/(a))
            let x2:Double = ((-b)+(sqrt(d))/(a))
            print("x1=", x1,"\nx2 =",x2)
        }
        if d < 0 {
            print("В поле действительных чисел корней нет")
        }
        print("Решить еще одно уравнение? Y(Да) q(завершить программу) m(Выход в главное меню):", terminator:" ")
        let sd:Character = Character(readLine()!)
        if (sd == "Y" || sd == "y") {
            ur()
        }
        if (sd=="m" || sd == "M"){
        menu()
        }
        if (sd=="q" || sd == "Q")
        {
            exit()
        }

    }
}

