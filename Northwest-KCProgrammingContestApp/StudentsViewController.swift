//
//  StudentsViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/13/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

    @IBOutlet weak var studentLBL: UILabel!
    @IBOutlet weak var student1LBL: UILabel!
    @IBOutlet weak var student2LBL: UILabel!
    @IBOutlet weak var teamNameLBL: UILabel!
    var team: Team!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentLBL.text = team.students[0]
        student1LBL.text = team.students[1]
        student2LBL.text = team.students[2]
        teamNameLBL.text = team.name
        navigationItem.title = team.name
    }
    
}
