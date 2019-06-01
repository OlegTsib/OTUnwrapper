//
//  ViewController.swift
//  OTUnwrapper
//
//  Created by OlegTsib on 10/23/2018.
//  Copyright (c) 2018 OlegTsib. All rights reserved.
//

import UIKit
import OTUnwrapper

class ViewController: UIViewController
{
    var optionalString: String?  = nil
    var optionalArray: [String]? = nil
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        optionalArray = ["One","Two"]
        
        let value             = optionalString.unwrap("The string is nil")
        let arrValue:[String] = optionalArray.unwrap()
        
        print(value)
        print(arrValue)
        
        dataToJSON()
    }
    
    func dataToJSON()
    {
        guard let path = Bundle.main.path(forResource: "UserJSON", ofType: "json") else { return }
        
        do
        {
            let data       = try Data(contentsOf: URL(fileURLWithPath: path))
            let json       = data.unwrapToJSON()
            
            //let ff: String = json.unwrapValue("user",[String:Any]()).unwrapValue("email")
            let user: User = json.unwrapToObject("user")
            
            print(user)
        }
        catch
        {
           
        }
    }
}

