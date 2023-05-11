//
//  ViewController.swift
//  MasaKadai13
//
//  Created by Mina on 2023/05/08.
//

import UIKit

class ViewController: UIViewController {

    private let fruit = Fruits()
    private let checkMark = UIImage(named: "check-mark")
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let keys = fruit.fruits.map { $0.key }
        let values = fruit.fruits.map {$0.value}

        cell.textLabel?.text = keys[indexPath.row]

        if values[indexPath.row] == true {
            cell.imageView?.image = checkMark
        }

        return cell
    }
}
