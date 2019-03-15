//
//  StudentsViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/14/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

    
    
    @IBOutlet weak var studentLBL: UILabel!
    @IBOutlet weak var firstStudentLBL: UILabel!
    @IBOutlet weak var secondStudentLabel: UILabel!

    var team: Team!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentLBL.text = team.students[0]
        firstStudentLBL.text = team.students[1]
        secondStudentLabel.text = team.students[2]

        navigationItem.title = team.name
    }
    
}
