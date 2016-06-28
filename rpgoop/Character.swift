//
//  Character.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100;
    private var _ap: Int = 10;
    
    
    var attackPower: Int {
        get {
            return _ap;
        }
    }
    
    var hp: Int {
        get {
            return _hp;
        }
    }
    
    init(hp: Int, ap: Int){
        self._hp = hp;
        self._ap = ap;
    }
    
    func attemptAttack(ap: Int) -> Bool {
        self._hp -= ap;
        
        return true;
    }
    
    var isAlive: Bool {
        get {
            return self._hp > 0;
        }
    }
    
}