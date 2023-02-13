// содержит ли одна строка другую
// функция принимает строку и возвращает true, если одна строка содержит другую
// игнорирование регистра

import Foundation
import UIKit

var str1 = "Thank you"
str1.contains("Thank")

extension String {
    //принимаем строку
    func customContains(_ string: String) -> Bool {
        //возвращаем с нижним регистром
        return self.lowercased().contains(string.lowercased())
    }
}
str1.customContains("thank")


// Сколько раз символ встречаетсяя в строке
// Функция принимает строку и символ, выводит колисество совпадений, с учетом регистра

func howManyTimes(input: String, count: Character) -> Int {
    var letterCount = 0
    
    for letter in input {
        if letter == count {
            letterCount += 1
        }
    }
    return letterCount
}
howManyTimes(input: "yygkgy", count: "y")


// вариант второй

func howManyTimes2(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}
howManyTimes2(input: "barakit", count: "a")
