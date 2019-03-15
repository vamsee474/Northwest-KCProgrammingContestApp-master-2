//
//  NewTeamViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/14/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var stuTF: UITextField!
    @IBOutlet weak var firstStudentTF: UITextField!
    @IBOutlet weak var secondStudentTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    var school: School!
    @IBAction func done(_ sender: Any) {
        let name = nameTF.text!
        let stuName = stuTF.text!
        let firstStudentName = firstStudentTF.text!
        let secondStudentName = secondStudentTF.text!
        school.addTeam(name: name, students: [stuName, firstStudentName, secondStudentName])
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  
}
