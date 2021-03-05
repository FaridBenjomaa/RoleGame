//
//  Team.swift
//  RoleGame
//
//  Created by Farid Benjomaa on 05/03/2021.
//

import Foundation

class Team {
    
    var game = Game()
    var name = ""
    var members  = [Character()]
    var teamPoint = 0
    
    init(){
    }
    init(name: String){
        self.name = name
    }
    
    func setMember(name: String){
        let char = Character(name: name)
        members += [char]
    }
 
    func score() -> Int{
        
        for member in members{
             teamPoint += member.lifePoint
        }
        game.dialogue(textFrancais: "Le score de l'\(name) est de \(teamPoint) point", textEnglish: "the scrore for \(name) is of \(teamPoint) point")
        return teamPoint
    }
    
    func setTeam(){
        members.removeAll()
        var count = "er"
        for i in 1...3 {
            
            if game.langue == "Fr"{
                if i > 1 {
                    count = "eme"
                }
            }else{
                switch i {
                    case 1:
                        count = "st"
                    case 2:
                        count = "nd"
                    case 3:
                        count = "th"
                    default:
                        return
                }
            }
            game.dialogue(textFrancais: "Choisissez  le nom de votre \(i) \(count) personnage", textEnglish: "Choose the name of your \(i) \(count) character")
           
            let name = readLine()
            if name != nil {
                setMember(name: name!.capitalized)
                
            }
        }
      
    }
    
    
    
}
