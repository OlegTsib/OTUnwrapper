//
//  User.swift
//  OTUnwrapper_Example
//
//  Created by Oleg Tsibulevskiy on 23/10/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import OTUnwrapper

struct User: OTUnwrappedObject
{
    let email   : String
    let imageURI: String
    
    init(dictionary: [String : Any])
    {
        email    = dictionary.unwrapValue("email")
        imageURI = dictionary.unwrapValue("image")
    }
}
