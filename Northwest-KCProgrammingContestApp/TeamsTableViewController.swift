//
//  TeamsTableViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/14/19.
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
        let values = tableView.dequeueReusableCell(withIdentifier: "TEAM_INFO", for: indexPath)
        values.textLabel?.text = school.teams[indexPath.row].name
        return values
    }


  

    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = school.name
        tableView.reloadData()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TEAM_INFORMATION"{
            let studentsdetails = segue.destination as! StudentsViewController
            studentsdetails.team = school.teams[tableView.indexPathForSelectedRow!.row]
        }
        else if segue.identifier == "NEWTEAM_DETAILS"{
            let NEWTEAM_INFORMATION = segue.destination as! NewTeamViewController
            NEWTEAM_INFORMATION.school = school
        }
    }

    
}
