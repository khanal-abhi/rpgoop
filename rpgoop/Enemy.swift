//
//  Enemy.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        get {
            return ["Rusty daggar", "Broken buckler"];
        }
    }
    
    var type: String {
        get {
            return "Grunt";
        }
    }
    
    
    func dropLoot() -> String? {
        if !isAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)));
            return loot[rand];
        }
        
        return nil;
    }
    
}
