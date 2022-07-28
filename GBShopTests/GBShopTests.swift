//
//  GBShopTests.swift
//  GBShopTests
//
//  Created by Dmitry Belov on 09.06.2022.
//

import XCTest
@testable import GBShop

class GBShopTests: XCTestCase {
    
    var string: String?

    override func setUpWithError() throws {
        string = "djhjkdshkjc"
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        string = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testString1() {
        let arg1 = 2
        let arg2 = 3
        let result = sum(arg1: arg1, arg2: arg2)
        XCTAssertTrue(result == 5)

    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testString2() {
        let arg1 = 2
        let arg2 = 3
        let result = sum(arg1: arg1, arg2: arg2)
        XCTAssertTrue(result == 5, result.description)

    }
    func sum(arg1: Int, arg2: Int) -> Int{
        return arg1 + arg2
    }
    

}
