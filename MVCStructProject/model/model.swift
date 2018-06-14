//
//  model.swift
//  MVCStructProject
//
//  Created by Pawan Yadav on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class model
{
    var id: Int
    var name: String
    var country: String
    var lon: Double
    var lat: Double
    
    init(id: Int, name: String, country :String, lon :Double, lat :Double)
    {
        self.id = id
        self.name = name
        self.country = country
        self.lon = lon
        self.lat = lat
    }
    
    
}
