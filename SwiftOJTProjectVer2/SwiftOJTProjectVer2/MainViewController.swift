//
//  MainViewController.swift
//  SwiftOJTProjectVer2
//
//  Created by 양현준 on 08/01/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    var dataList = [
    ("Dark Knight", "This is Awesome", "2008-09-05",8.95),
    ("The Secret", "Movie And Music", "2015-05-07",9.19)
    ]
    
    lazy var list : [MovieVO] = {
        var dataSet = [MovieVO]()
        for(title, desc, opendate, rating) in self.dataList  {
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.openDate = opendate
            mvo.rating = rating
            
            dataSet.append(mvo)
        }
        
        return dataSet
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Movie"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count // 행의 길이를 Return 함
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //한개의 행에 어떤 값들이 적용되는지 사용하는 function
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell") as! MainViewControllerSell
        cell.cellTitle?.text = row.title
        cell.cellDescription?.text = row.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //한개의 행을 클릭했을 때 들어가는 Action
        //log
        let selectedMovie = self.list[indexPath.row]
        
        print("This Movie is \(String(describing: selectedMovie.title ?? nil))")
        //insert Detail view
        guard let detailView = self.storyboard!.instantiateViewController(withIdentifier:
            "DetailView")as? Details else {
                return
        }
        detailView.movieInfo.title = selectedMovie.title
        detailView.movieInfo.description = selectedMovie.description
        detailView.movieInfo.openDate = selectedMovie.openDate
        detailView.movieInfo.rating = selectedMovie.rating
        
        self.present(detailView,animated: true)
    }
}

class MainViewControllerSell : UITableViewCell  {
    
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellDescription: UILabel!
    
    
}
