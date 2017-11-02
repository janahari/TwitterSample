//
//  ViewController.swift
//  test1
//
//  Created by Mani on 02/11/17.
//  Copyright © 2017 iOSDevGuy. All rights reserved.
//
//This is created by har
import UIKit

class ViewController: UIViewController {
    var isEven: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(addTwonNumbers(first: 3, second: 4))
       
    }
    func dummy(){
        
    }
    override func viewWillAppear(_ animated: Bool) {
        _ = isEvenNumber(number: 10)
        print("Result is :\(isEven)")
    }
    func isEvenNumber(number: Int) -> Bool{
        if number % 2 == 0{
            isEven = true
        }
        return isEven
    }
    func addTwonNumbers(first: Int, second: Int) -> Int {
        return first + second
    }
    


}

