//
//  ViewController.swift
//  MVCStructProject
//
//  Created by Pawan Yadav on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myTableView: UITableView!
    
      var apiResponse = [model]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
            data.getData { (data) in
            self.apiResponse = data
            self.myTableView.reloadData()
        }

    }

}

extension ViewController: UITableViewDataSource,UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return apiResponse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! tableCell
        cell.setup(model: apiResponse[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 150
    }
}



