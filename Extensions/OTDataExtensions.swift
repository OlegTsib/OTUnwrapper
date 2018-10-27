//
//  OTDataExtensions.swift
//  OTUnwrapper
//
//  Created by Oleg Tsibulevskiy on 23/10/2018.
//

extension Data
{
    public func unwrapToJSON(options: JSONSerialization.ReadingOptions = []) -> [String: Any]
    {
        do
        {
            let json = try JSONSerialization.jsonObject(with: self, options: options)
            
            guard let dictionary = json as? [String: Any] else { return [String: Any]()}
            
            return dictionary
        }
        catch
        {
            return [String: Any]()
        }
    }
}
