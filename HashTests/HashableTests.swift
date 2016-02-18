//
//  HashableTests.swift
//  Silverback
//
//  Created by Christian Otkjær on 12/10/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Hash

class HashableTests: XCTestCase {

    func test_isIn()
    {
        var i: Int? = 10
        
        var set : Set<Int>? = Set(arrayLiteral: 0,10,20,30)
        var array : Array<Int>? = [0,1,2,3,4,5,6,7,8,9,10]
        
        XCTAssertEqual(true, i?.isIn(set))
        XCTAssertEqual(true, i?.isIn(array))
        
        i = 50
        
        XCTAssertEqual(false, i?.isIn(set))
        XCTAssertEqual(false, i?.isIn(array))
        
        i = nil
        
        XCTAssertEqual(nil, i?.isIn(set))
        XCTAssertEqual(nil, i?.isIn(array))
        
        
        set?.removeAll()
        array?.removeAll()
        
        XCTAssertEqual(nil, i?.isIn(set))
        XCTAssertEqual(nil, i?.isIn(array))

        i = 10
        
        XCTAssertEqual(false, i?.isIn(set))
        XCTAssertEqual(false, i?.isIn(array))
        
        set = nil
        array = nil
    
        XCTAssertEqual(false, i?.isIn(set))
        XCTAssertEqual(false, i?.isIn(array))
        
    }
}
