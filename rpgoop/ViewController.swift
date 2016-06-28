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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        player = Player(name: "Jhonny Guitar", hp: 110, ap: 20);
        playerHpLabel.text = "\(player.hp) HP";
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

