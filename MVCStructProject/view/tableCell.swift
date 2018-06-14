//
//  tableCell.swift
//  MVCStructProject
//
//  Created by Pawan Yadav on 14/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class tableCell: UITableViewCell
{

    @IBOutlet weak var titleid: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var lonLabel: UILabel!
    @IBOutlet weak var latLabel: UILabel!
    
    
    
    func setup(model: model)
    {
        titleid.text = String(describing: model.id)
        name.text = model.name
        countryLabel.text = model.country
        lonLabel.text = String(describing: model.lon)
        latLabel.text = String(describing: model.lat)
    }

}
