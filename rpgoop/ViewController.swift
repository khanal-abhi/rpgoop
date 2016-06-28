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
    
    @IBAction func onChestTapped(sender: AnyObject) {
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
        updateStuff();
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
        enemy.attemptAttack(ap);
        var verb: String = "attacks";
        if(!enemy.isAlive){
            verb = "kills";
        }
        updateStuff();
        messageLabel.text = "\(player.name) \(verb) \(enemy.type) with \(ap) damage";
        
    }
    
    func enemyAttack(){
        
        let ap = Int(arc4random_uniform(UInt32(enemy.attackPower)));
        player.attemptAttack(ap);
        var verb: String = "attacks";
        if(!player.isAlive){
            verb = "kills";
        }
        updateStuff();
        messageLabel.text = "\(enemy.type) \(verb) \(player.name) with \(ap) damage";
    }
    
    func updateStuff(){
        playerHpLabel.text = "\(player.hp) HP";
        enemyHpLabel.text = "\(enemy.hp) HP";
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

