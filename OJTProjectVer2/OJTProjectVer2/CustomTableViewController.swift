//
//  CustomTableViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 14/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let tableViewCell = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "customTableViewCell")
        // Do any additional setup after loading the view.
        self.view.addSubview(self.tableView)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell") as! CustomTableViewCell
        
        cell.customCellImage.image = UIImage(named:"avengers.png")
        cell.customCellLabel.text = "Avengers"
     
        return cell
    }
}
