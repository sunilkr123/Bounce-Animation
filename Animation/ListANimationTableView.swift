//
//  ListANimationTableView.swift
//  Animation
//
//  Created by MacHD on 27/09/19.
//  Copyright © 2019 MacHD. All rights reserved.
//

import UIKit

class ListANimationTableView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AnimateableView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 15
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "ANimations at \(indexPath.row)"
        return cell
    }
   
    func AnimateableView(){
        tableView.reloadData()
        let cells = tableView.visibleCells
        let tableviewheight = tableView.bounds.size.height
        
        for cell in cells{
            cell.transform = CGAffineTransform(translationX: 0, y: tableviewheight)
        }
        var delayCounter = 0
        for cell in cells{
            UIView.animate(withDuration: 1.95, delay: Double(delayCounter)*0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
                delayCounter += 1
            }, completion: nil)
        }
    }

}
