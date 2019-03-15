//
//  Models.swift
//  Northwest-KCProgrammingContestApp
//
//  Created by Gangapatnam,Vamsee Krishna on 3/13/19.
//  Copyright © 2019 Gangapatnam,Vamsee Krishna. All rights reserved.
//

import Foundation


class Schools{
    private var schools:[School]
    
    static var shared = Schools()
    
    init(schools: [School]) {
        self.schools = schools
        self.schools.append(School(name: "NorthwestMissouri State university", coach: "Vamsee"))
        self.schools.append(School(name: "California state univerity", coach: "adam"))
        self.schools.append(School(name: "Arkansas state univerity", coach: "other"))
        self.schools.append(School(name: "Central missouri state univerity", coach: "other1"))
    }
    
    convenience init(){
        self.init(schools: [])
    }
     
    
    subscript(index:Int) -> School {
        return schools[index]
    }
    
    func numSchools() -> Int{
        return schools.count
    }
    
    func add(school:School){
        schools.append(school)
    }
    
    func delete(school:School){
        for i in 0 ..< schools.count {
            if schools[i] == school {
                schools.remove(at:i)
                break
            }
        }
    }
    
}

class School:Equatable{
    var name: String
    var coach: String
    var teams: [Team]
    
    func addTeam(name: String, students: [String]){
        print("I am in add")
        teams.append(Team(name: name, students: students))
    }
    
    init(name: String, coach: String) {
        self.name = name
        self.coach = coach
        self.teams = []
    }
    
    static func == (lhs: School, rhs: School) -> Bool {
        return lhs.name == rhs.name && lhs.coach == rhs.coach && lhs.teams == rhs.teams
    }
}

class Team : Equatable{
    var name: String
    var students: [String]
    
    init(name: String, students: [String]){
        self.name = name
        self.students = students
    }
    
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.name == rhs.name && lhs.students == rhs.students
    }
}





