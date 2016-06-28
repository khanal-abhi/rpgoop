//
//  ViewController.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var playerHpLabel: UILabel!
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    
    var pDamage: Int?
    var eDamage: Int?
    
    @IBAction func onChestTapped(sender: AnyObject) {
        messageLabel.text = "You receieve \(enemy.loot[Int(arc4random_uniform(UInt32(enemy.loot.count)))])";
        chestButton.hidden = true;
    }
    
    @IBAction func playerAttacked(sender: AnyObject) {
        playerAttack();
        enemyAttack();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chestButton.hidden = true;
        
        player = Player(name: "Jhonny Guitar", hp: 110, ap: 20);
        generateRandomEnemy();
        messageLabel.text = "\(player.name) encounters \(enemy.type)!";
    }
    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2));
        switch rand {
        case 0:
            enemy = Kimara(hp: 150, ap: 15);
        case 1:
            enemy = DevilWizard(hp: 100, ap: 10);
        default:
            enemy = DevilWizard(hp: 100, ap: 10);
        }
    }
    
    
    func playerAttack(){
        let ap = Int(arc4random_uniform(UInt32(player.attackPower)));
        if(enemy.attemptAttack(ap)){
            eDamage = ap;
        }
        if(!enemy.isAlive){
            enemyImage.hidden = true;
            chestButton.hidden = false;
            
            messageLabel.text = "\(player.name) kills \(enemy.type) with \(ap) damage!";
        }
        
    }
    
    func enemyAttack(){
        
        let ap = Int(arc4random_uniform(UInt32(enemy.attackPower)));
        player.attemptAttack(ap);
        if(!player.isAlive){
            //TODO: Game Over Screen
        
        }
        pDamage = ap;
        updateStuff();
    }
    
    func updateStuff(){
        playerHpLabel.text = "\(player.hp) HP";
        enemyHpLabel.text = "\(enemy.hp) HP";
        
        let ed: Int = eDamage ?? 0;
        let pd: Int = pDamage ?? 0;
        
        messageLabel.text = "\(player.name) does \(ed) damage and \(enemy.type) does \(pd) damage!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

