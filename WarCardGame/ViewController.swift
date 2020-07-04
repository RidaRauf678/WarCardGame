//
//  ViewController.swift
//  WarCardGame
//
//  Created by Rida Raufdeen on 2020-06-25.
//  Copyright © 2020 Rida Raufdeen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
   
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            //left side wins
            leftScore += 1
            
            LeftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            //right side wins
            rightScore += 1
            
            RightScoreLabel.text = String(rightScore)
        }
        
    }
    
}

