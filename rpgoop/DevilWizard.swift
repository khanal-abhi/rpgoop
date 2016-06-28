//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        get {
            return ["Dark amulet", "salted pork"];
        }
    }
    
    override var type: String {
        get {
            return "Devil Wizard";
        }
    }
}