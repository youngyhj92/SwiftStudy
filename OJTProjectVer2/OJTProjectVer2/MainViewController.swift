//
//  MainViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 07/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit


class MainViewController : UITableViewController  {
    
    let movieData = [
        Movie(name:"Harry Potter",maker:"J.K Rowling",rating:5.0)
        ,Movie(name:"The Load Of Ring", maker: "W.A.I",rating: 4.5)
        ,Movie(name:"the Avengers", maker : "mavel", rating: 4.0)
    ]
    
    //tableView 전체 행의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.count
    }
    
    // tableView Cell 하나에 들어가는 정보
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellItem = tableView.dequeueReusableCell(withIdentifier: "movieListItem",for:indexPath) as! MainTableVIewCell
//        cellItem.cellImage.image =
        cellItem.cellTitle.text = movieData[indexPath.row].name
        cellItem.cellMaker.text = "Maker : " + movieData[indexPath.row].maker
        cellItem.cellRating.text = "Rating : " + String(movieData[indexPath.row].rating)
        
        return cellItem
    }
    
    //tableView 한개 행을 클릭했을 때 동작
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //insert Detail view
        guard let detailView = self.storyboard!.instantiateViewController(withIdentifier:
            "DetailView")as? InfoViewController else {
                return
        }
        
        detailView.movieInfo = movieData[indexPath.row]
    }
    
    
    
    
    
    
    //Logout CLick
    @IBAction func logoutClicked(_ sender: Any) {
        let logoutCheckDialog = UIAlertController(title: "Logout", message: "Logout 하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        let logoutAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: {
            (logoutAction) in self.logout()
        })
        let logoutCalcelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        logoutCheckDialog.addAction(logoutAction)
        logoutCheckDialog.addAction(logoutCalcelAction)
        self.present(logoutCheckDialog, animated: false)
    }

    func logout() {
        UserDefaults.standard.removeObject(forKey: "userId")
        UserDefaults.standard.removeObject(forKey: "userPassword")
        UserDefaults.standard.removeObject(forKey: "isLogin")
        
        self.dismiss(animated: false)
    }
    
}

class MainTableVIewCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellMaker: UILabel!
    @IBOutlet weak var cellRating: UILabel!
    
}
