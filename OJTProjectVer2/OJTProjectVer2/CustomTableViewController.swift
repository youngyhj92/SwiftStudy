//
//  CustomTableViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 14/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    let movieData = [
        Movie(image:UIImage(named: "AppIcon.png")!, name:"Harry Potter".localized,maker:"J.K Rowling",rating:5.0)
        ,Movie(image:UIImage(named: "thelordofthering.jpg")!, name:"The Lord Of the Ring".localized, maker: "J.R.R.Tolkin",rating: 4.5)
        ,Movie(image:UIImage(named: "avengers.png")!, name:"the Avengers".localized, maker : "marvel studio", rating: 4.0)
    ]
    
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
        return movieData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell") as! CustomTableViewCell
        
        cell.customCellImage.image = movieData[indexPath.row].image
        cell.customCellLabel.text = movieData[indexPath.row].name
     
        return cell
    }
    
    //tableView 한개 행을 클릭했을 때 동작
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //insert Detail view
//        guard let detailView = self.storyboard!.instantiateViewController(withIdentifier:
//            "detailInfo")as? InfoViewController else {
//                return
//        }
//        detailView.movieDetailInfo = movieData[indexPath.row]
//        self.navigationController?.pushViewController(detailView, animated: true)
        
        let testViewController = 
        self.navigationController?.pushViewController(testViewController, animated: true)
    }

}
