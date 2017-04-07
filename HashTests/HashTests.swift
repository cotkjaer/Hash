//
//  HashTests.swift
//  HashTests
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Hash

class HashTests: XCTestCase
{
    func test_hash()
    {
        let f: Float = 0.1
        let d: Double = 10.1
        let s: String = "test"
        
        XCTAssertEqual(Hash.hash(d, f, s), Hash.hash(d, f, s))
        XCTAssertNotEqual(Hash.hash(s, f, d), Hash.hash(d, f, s))
        
        XCTAssertEqual(Hash.hash(2, 2), 24)
        
        XCTAssertEqual(Hash.hash(hashValuesArray:[2, 3]), 25)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
