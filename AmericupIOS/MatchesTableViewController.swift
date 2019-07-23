//
//  MatchesTableViewController.swift
//  AmericupIOS
//
//  Created by German Rivera P on 7/21/19.
//  Copyright © 2019 Santiago Muñoz. All rights reserved.
//

import UIKit

class MatchesTableViewController: UITableViewController {
    
    var matchesManager:MatchesManager = MatchesManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let match = matchesManager.getMatch(at:indexPath.row)
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.t1 = match.equipo1
        cell.fl1 = match.flag1
        cell.sc1 = match.score1
        cell.sc2 = match.score2
        cell.t2 = match.equipo2
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows according to matches list size
        return matchesManager.matchCount
    }
    /*func dismissMe() {
        dismiss(animated: true, completion: nil)
    }
    
     */
    
}
