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
    func isIn<S : SequenceType where Self == S.Generator.Element>(sequence: S?) -> Bool
    {
        return sequence?.contains(self) == true
    }
}
