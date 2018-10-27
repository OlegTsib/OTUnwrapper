//
//  OTDictionaryExtensions.swift
//  OTUnwrapper
//
//  Created by Oleg Tsibulevskiy on 23/10/2018.
//

extension Dictionary
{
    public func unwrapValue<T: OTUnwrappedValue>(_ key: Key, _ optionalValue: T = T()) -> T
    {
        return OTUnwrap(self[key] as? T, optionalValue)
    }
    
    public func unwrapToObject<T: OTUnwrappedObject>(_ key: Key) -> T
    {
        let dictionary = self[key] as? [String:Any] ?? [String:Any]()
        let object     = T(dictionary: dictionary)
        
        return object
    }
}
