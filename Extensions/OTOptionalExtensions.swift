//
//  OTOptionalExtensions.swift
//  OTUnwrapper
//
//  Created by Oleg Tsibulevskiy on 27/10/2018.
//

extension Optional
{
    public func unwrap<T: OTUnwrappedValue>(_ optionalValue: T = T()) -> T
    {
        return OTUnwrap(self as? T, optionalValue)
    }
}
