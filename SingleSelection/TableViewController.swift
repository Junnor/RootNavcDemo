//
//  TableViewController.swift
//  SingleSelection
//
//  Created by nyato喵特 on 2017/7/10.
//  Copyright © 2017年 nyato喵特. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Table View"
    }
    
    private let testTransition = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if testTransition {
            let window = UIApplication.shared.windows.first!
            UIView.transition(with: window,
                              duration: 0.5,
                              options: .transitionFlipFromLeft,
                              animations: {
                                let newvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
                                window.rootViewController = newvc
            }, completion: nil)
        }

    }


    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        
        cell.textLabel?.highlightedTextColor = UIColor.red
        
        let selectedView = UIView()
        selectedView.backgroundColor = UIColor.purple
        cell.selectedBackgroundView = selectedView
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
}
