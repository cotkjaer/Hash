//
//  Hash.swift
//  Silverback
//
//  Created by Christian Otkjær on 16/09/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

import Foundation

public func hash(seed: Int = 11, hashValuesArray: [Int]) -> Int
{
    return hashValuesArray.reduce(0, { (combinedHashValue, hashValue) -> Int in
        
        return seed &* combinedHashValue &+ hashValue
    })
}

public func hash(seed: Int = 11, _ hashValues: Int...) -> Int
{
    return hash(seed: seed, hashValuesArray:hashValues)
}

public func hash<H:Hashable>(seed: Int = 11, _ hashables: H...) -> Int
{
    return hash(seed: seed, hashValuesArray:hashables.map{$0.hashValue})
}

public func hash<H1:Hashable, H2:Hashable>(seed: Int = 11, _ hashable1: H1, _ hashable2: H2) -> Int
{
    return hash(seed: seed, hashValuesArray:[hashable1.hashValue, hashable2.hashValue])
}

public func hash<H1:Hashable, H2:Hashable, H3:Hashable>(seed: Int = 11, _ hashable1: H1, _ hashable2: H2, _ hashable3: H3) -> Int
{
    return hash(seed: seed, hashValuesArray:[hashable1.hashValue, hashable2.hashValue, hashable3.hashValue])
}

public func hash<H1:Hashable, H2:Hashable, H3:Hashable, H4:Hashable>(seed: Int = 11, _ hashable1: H1, _ hashable2: H2, _ hashable3: H3, _ hashable4: H4) -> Int
{
    return hash(seed: seed, hashValuesArray:[hashable1.hashValue, hashable2.hashValue, hashable3.hashValue, hashable4.hashValue])
}

public func hash<H1:Hashable, H2:Hashable, H3:Hashable, H4:Hashable, H5:Hashable>(seed: Int = 11, _ hashable1: H1, _ hashable2: H2, _ hashable3: H3, _ hashable4: H4, _ hashable5: H5) -> Int
{
    return hash(seed: seed, hashValuesArray:[hashable1.hashValue, hashable2.hashValue, hashable3.hashValue, hashable4.hashValue, hashable5.hashValue])
}

// MARK: - <#comment#>

extension Sequence where Iterator.Element: Hashable
{
    public func hashed(seed: Int = 11) -> Int
    {
        let ints = self.map { $0.hashValue }
        
        return Hash.hash(seed: seed, hashValuesArray: ints)
    }
}

