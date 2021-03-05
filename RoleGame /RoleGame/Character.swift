//
//  Character.swift
//  RoleGame
//
//  Created by Farid Benjomaa on 05/03/2021.
//

import Foundation

class Character {
    
    var team = Team()
    var game = Game()
    var name = ""
    var lifePoint = 100
    var heal = 40
    var isALive = true
    var weapon = Weapon()
    
    
    
    init(){
        
    }
    
    init(name: String){
        self.name = name
        self.lifePoint = 100
        self.isALive = true
        self.heal = 40
    }
   
    
    func attack(character: Character){
        game.dialogue(textFrancais: "\(name) attaque \(character.name) est lui inflige \(self.weapon.attackPoint) de point de degats", textEnglish: "\(name) attack \(character.name) and take \(self.weapon.attackPoint) point")
        character.lifePoint = character.lifePoint - self.weapon.attackPoint
        game.dialogue(textFrancais:  "il reste \(character.lifePoint) point de vie à \(character.name)", textEnglish:"\(character.name) has \(character.lifePoint) life point")
     
    }
    
    func heal(character: Character){
        game.dialogue(textFrancais: "\(name) soigne \(character.name) de \(self.weapon.attackPoint) point de vie", textEnglish: "\(name) heal \(character.name) to \(self.weapon.attackPoint) point")
        character.lifePoint = character.lifePoint + self.heal
        game.dialogue(textFrancais:  "il reste \(character.lifePoint) point de vie à \(character.name)", textEnglish:"\(character.name) has \(character.lifePoint) life point")
       
    }
    
    func attackOrHeal(){
        game.dialogue(textFrancais: "Que souhaiter vous faire ?", textEnglish: "What do you wish to do?")
        game.dialogue(textFrancais: "1- Attaquer \n2- Soigner", textEnglish: "1- Attack \n2- Heal")
        let choice = readLine()
        
        if choice != nil {
            switch choice {
                case "1":
                    game.dialogue(textFrancais: "Quel personnage voulez vou attaquer ?", textEnglish: "Whitch character do you want to attack ?")
                    var i = 1
                    for member in team.members {
                        if member.lifePoint == 0{
                            print(" \(i)- \(member.name) (KO)")
                        }else{
                            print("\(i)- \(member.name) (\(member.lifePoint))")
                        }
                        i += 1
                    }
                    let select = readLine()
                    if select != nil {
                        switch select {
                            case "1":
                                attack(character: team.members[1])
                            case "2":
                                attack(character: team.members[2])
                            case "3":
                                attack(character: team.members[3])
                            default:
                                return
                        }
                        
                    }
                case "2":
                    
                default:
                    
            }
        }
    }

    
}
