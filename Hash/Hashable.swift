//
//  Hashable.swift
//  Silverback
//
//  Created by Christian Otkjær on 12/10/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

//MARK: - IsIn

extension Hashable
{
    func isIn<S: Sequence>(_ sequence: S?) -> Bool where Self == S.Iterator.Element
    {
        return sequence?.contains(self) == true
    }
}

// MARK: - chaining

extension Hashable
{
    func chainedHashValue<H:Hashable>(seed: Int = 11, _ other: H) -> Int
    {
        return seed &* hashValue &+ other.hashValue
    }
}

