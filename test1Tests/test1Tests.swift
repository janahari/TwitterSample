//
//  test1Tests.swift
//  test1Tests
//
//  Created by Mani on 02/11/17.
//  Copyright © 2017 iOSDevGuy. All rights reserved.
//

import XCTest
@testable import test1

//Suite
class test1Tests: XCTestCase {
    var VC : ViewController?
    var storyboard: UIStoryboard? = nil
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        VC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
         let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = VC
         _ = VC?.view

        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testViewDidLoad(){
               XCTAssertNotNil(VC?.view)
    }
    func testIsEven(){
        XCTAssertTrue((VC?.isEvenNumber(number: 50))!)
    }
    func testAddTwoNumbers(){
        let first = 3
        let second = 5
        let result = VC?.addTwonNumbers(first: first, second: second)
        
        //XCAssert
        XCTAssertEqual(result, 8)
        
        
        
    }
    
        
}
