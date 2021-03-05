//
//  Game.swift
//  RoleGame
//
//  Created by Farid Benjomaa on 05/03/2021.
//

import Foundation

class Game{

    var langue = "Fr"
    var isOver = false
    
    func dialogue(textFrancais: String, textEnglish: String){
        if self.langue == "Fr"{
            print(textFrancais)
        }else{
            print(textEnglish)
        }
    }
    
}
