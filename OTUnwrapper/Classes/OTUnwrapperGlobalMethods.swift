//
//  OTUnwrapperGlobalMethods.swift
//  OTUnwrapper
//
//  Created by Oleg Tsibulevskiy on 24/10/2018.
//

internal func OTUnwrap<T: OTUnwrappedValue>(_ value: OTUnwrappedValue?, _ optionalValue: T = T()) -> T
{
    guard let unwrappedValue = value as? T else { return optionalValue }
    
    return unwrappedValue
}
