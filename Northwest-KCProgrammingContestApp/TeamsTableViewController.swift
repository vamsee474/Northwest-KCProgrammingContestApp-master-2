//
//  TeamsTableViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/13/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {

    var school: School!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return school.teams.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teams", for: indexPath)
        cell.textLabel?.text = school.teams[indexPath.row].name
        return cell
    }


  

    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = school.name
        tableView.reloadData()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Team Details"{
            let studentsVC = segue.destination as! StudentsViewController
            studentsVC.team = school.teams[tableView.indexPathForSelectedRow!.row]
        }
        else if segue.identifier == "New Team"{
            let newTeamsVC = segue.destination as! NewTeamViewController
            newTeamsVC.school = school
        }
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            school.teams.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
