//
//  GameOverViewController.swift
//  rpgoop
//
//  Created by Abhinash Khanal on 6/27/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func didReceiveMemoryWarning() {
        // Delete resources that can be recreated later
        super.didReceiveMemoryWarning();
    }
    @IBAction func startGame(sender: AnyObject) {
        performSegueWithIdentifier("startGame", sender: self);
    }
}