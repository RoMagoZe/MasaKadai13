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

        cell.textLabel?.text = fruit.fruits[indexPath.row].key

        if fruit.fruits[indexPath.row].value {
            cell.imageView?.image = checkMark
        } else {
            cell.imageView?.image = nil
        }

        return cell
    }
}
