//
//  SchoolsTableViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/14/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna. All rights reserved.
//

import UIKit

class SchoolsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Schools.shared.numSchools()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SCHOOL_INFO", for: indexPath)
        cell.textLabel?.text = Schools.shared[indexPath.row].name
        cell.detailTextLabel?.text = Schools.shared[indexPath.row].coach
        return cell
    }
    
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SCHOOL_INFORMATION"{
            let sc = segue.destination as! TeamsTableViewController
            sc.school = Schools.shared[tableView.indexPathForSelectedRow!.row]
        }
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Schools.shared.delete(school: Schools.shared[indexPath.row] )
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
