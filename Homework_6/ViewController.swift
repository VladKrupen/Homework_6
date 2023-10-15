//
//  ViewController.swift
//  Homework_6
//
//  Created by Vlad on 14.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var stringArray: Array<String> = ["abc", "dwefgefg13", "oiut", "qwertfds", "3fdvdsfvv", "qwef gsdjkfnb", "qegbg sdg qwe"]

// 1. Посчитать количество символов в массиве. (2 способа: через цикл for и с помощью функции высшего порядка)

        var count: Int = 0
        for item in stringArray {
            count += item.count
        }

// 1
        print(count)

// 2
        print(stringArray.reduce(0){ $0 + $1.count })
        
        
// 2. Если в строке символов меньше чем 5, то не использовать далее
        
        let result = stringArray.filter({$0.count > 5})
        print(result)
        
        
// 3. Количество строк, где символов больше чем 10
        
        let resultSecond = stringArray.filter({$0.count > 10}).count
        print(resultSecond)


// 4. Распечатать строку в которой больше всего символов
        
        let resultThird = stringArray.sorted(by: {$0.count > $1.count})

        print(resultThird[0])
        
//  5. Отсортировать массив, по возрастанию количества символов в строке
        
        let resultFourth = stringArray.sorted {$0.count < $1.count}

        print(resultFourth)
        
//  6. Выбросить пробелы из строк в массиве
        
        var resultFifth = stringArray.map(Array.init)
                                     .map({ $0.filter{ $0 != " " } })
                                     .map({ String($0) })
        print(resultFifth)
        

        
        
    }


}

