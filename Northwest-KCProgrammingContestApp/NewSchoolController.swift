//
//  ViewController.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/14/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna. All rights reserved.


import UIKit

class NewSchoolController: UIViewController {

    @IBOutlet weak var coachNameTF: UITextField!
    @IBOutlet weak var schoolNameTF: UITextField!
    
    var newSchool: School!
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    @IBAction func done(_ sender: Any) {
        let schoolName = schoolNameTF.text!
        let coachName = coachNameTF.text!
        
        Schools.shared.add(school: School(name: schoolName, coach: coachName))
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

