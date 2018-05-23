//
//  ViewController.swift
//  XCodeTanitim
//
//  Created by fatih acar on 23.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    var arabalar = ["Bmw","Mercedes","Audi","Volvo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arabalar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = arabalar[indexPath.row]
        return cell
    }

}

