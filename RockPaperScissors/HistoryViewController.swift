//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Alexandre Bianchi on 16/11/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var history: [RPSMatch]!
    
    @IBOutlet weak var tableViewHistory: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellInfo", for: indexPath)
        
        if (history[1].winner == history[1].p1) {
            cell.textLabel!.text = "User beats"
            cell.detailTextLabel!.text = "Computer"
        } else {
            cell.textLabel!.text = "Computer beats"
            cell.detailTextLabel!.text = "User"
        }
        
        return cell
    }
    
    @IBAction func playAgain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
