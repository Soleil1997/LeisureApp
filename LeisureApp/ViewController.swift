//
//  ViewController.swift
//  LeisureApp
//
//  Created by 湊航太 on 2021/04/04.
//

import UIKit
var <#name#> = <#value#>

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var users: [User] = []
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        
        loadData()
    }
    
    func loadData() {
       users.append(User(nameJP: "ピカまる", age: "２３歳", imageName: "ピカチュウ"))
       users.append(User(nameJP: "シャンシャン", age: "１８歳", imageName: "パンダ"))
       users.append(User(nameJP: "ぺんぺん", age: "３５歳", imageName: "ペンギン"))
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? UserTableViewCell else {
                fatalError("Dequeue failed: MyTableViewCell.")
            }
            
            cell.UserNameJPLabel.text = users[indexPath.row].nameJP
            cell.UserAgeLabel.text = users[indexPath.row].age
            cell.UserImageView.image = UIImage(named: users[indexPath.row].imageName)

            return cell
        
    }
    


}

