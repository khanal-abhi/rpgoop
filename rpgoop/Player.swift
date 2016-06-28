//
//  Player.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import Foundation

class Player: Character{
    
    private var _name = "Player";
    private var _inventory = [String]();
    
    
    var name: String {
        get {
            return _name;
        }
    }
    
    var inventory: [String] {
        get {
            return _inventory;
        }
    }
    
    convenience init(name: String, hp: Int, ap: Int){
        self.init(hp: hp, ap: ap);
        self._name = name;
    }
    
    
    
}