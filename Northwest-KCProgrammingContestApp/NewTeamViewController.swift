//
//  NewTeamViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/13/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var student0TF: UITextField!
    @IBOutlet weak var student1TF: UITextField!
    @IBOutlet weak var student2TF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var school: School!
    @IBAction func done(_ sender: Any) {
        let name = nameTF.text!
        let student0Name = student0TF.text!
        let student1Name = student1TF.text!
        let student2Name = student2TF.text!
        school.addTeam(name: name, students: [student0Name, student1Name, student2Name])
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  
}
