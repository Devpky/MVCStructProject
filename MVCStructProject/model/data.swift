//
//  data.swift
//  MVCStructProject
//
//  Created by Pawan Yadav on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import Foundation

class data {
    
    static func getData(completion: @escaping ([model]) -> ())
    {
        DispatchQueue.global(qos: .userInteractive).async
            {
            
            
            // MARK:- raed JSON file Data.
                
    if let path = Bundle.main.path(forResource: "citylist", ofType: "json")
    {
        do
        {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            
            if let jsonResult = jsonResult as? [Dictionary<String, AnyObject>]
            {
                
                // MARK:- for multitasking userInteractive(sort time taken in processing)
                DispatchQueue.global(qos: .userInteractive).async
                    {
                        var data = [model]()
                        
                        for i in 0..<jsonResult.count
                        {
                            
                            data.insert(model(id: jsonResult[i]["id"] as! Int, name: jsonResult[i]["name"] as! String, country: jsonResult[i]["country"] as! String, lon: jsonResult[i]["coord"]!["lon"] as! Double, lat: jsonResult[i]["coord"]!["lat"] as! Double), at: i)
                            
                            
                            
                        }
                        
                        // MARK:- main thred call bcz tablview reload (ui call always with main thred other wise Dedlock occur)
                        DispatchQueue.main.async
                            {
                            completion(data)
                            }
                        
                }
                
                
                
                
            }
        }
        catch
        {
            // handle error
            print("error")
        }
    }
            
            
        }
    }
}
