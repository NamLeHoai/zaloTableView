//
//  ViewController.swift
//  ZaloTableView
//
//  Created by Nam Le on 5/20/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let datas = createData()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // tái sử dụng cell
        tableView.register(UINib(nibName: "ChatTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatTableViewCell")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatTableViewCell", for: indexPath) as! ChatTableViewCell
        cell.avatar.image = UIImage(named: datas[indexPath.row].Avatar)
        cell.peopleLB.text = datas[indexPath.row].people
        cell.contentLB.text = datas[indexPath.row].content
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let myDate = formatter.string(from: Date())
        cell.timeLB.text = myDate
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

