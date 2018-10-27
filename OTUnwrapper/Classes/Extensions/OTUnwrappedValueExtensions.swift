//
//  OTUnwrappedValueExtensions.swift
//  OTUnwrapper
//
//  Created by Oleg Tsibulevskiy on 27/10/2018.
//

extension OTUnwrappedValue
{
    public func unwrap<T: OTUnwrappedValue>(_ optionalValue: T = T()) -> T
    {
        return OTUnwrap(self as? T, optionalValue)
    }
}
