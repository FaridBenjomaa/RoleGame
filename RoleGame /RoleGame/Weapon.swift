//
//  Weapon.swift
//  RoleGame
//
//  Created by Farid Benjomaa on 05/03/2021.
//

import Foundation

class Weapon {
    
    var name = ""
    var attackPoint = 0
    
    init(){
        
    }
    
    init(name:String,attackPoint:Int) {
        self.name = name
        self.attackPoint = attackPoint
    }
}
