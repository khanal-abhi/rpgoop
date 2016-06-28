//
//  Kimara.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15;
    
    override var loot: [String] {
        get {
            return ["A lot of gold", "Fancy pipe", "Price's yellow guitar"];
        }
    }
    
    override var type: String {
        get {
            return "Kimara";
        }
    }
    
    override func attemptAttack(ap: Int) -> Bool {
        if(ap >= IMMUNE_MAX){
            return super.attemptAttack(ap);
        } else {
            return false;
        }
    }

}
