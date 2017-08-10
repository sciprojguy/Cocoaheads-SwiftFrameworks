//
//  ViewController.swift
//  Dicey
//
//  Created by Chris Woodard on 8/10/17.
//  Copyright © 2017 UsefulSoft. All rights reserved.
//

import UIKit
import Mersenne

class ViewController: UIViewController {

    @IBAction func roll(_ sender: Any) {
        let m = Mersenne.shared()
        guard let rolled = m?.roll(shakes: 50)
        else {
            return
        }
        
        let left = rolled[0]
        let right = rolled[1]
        
        leftDice.image = UIImage(named: "\(left).png")
        rightDice.image = UIImage(named: "\(right).png")
    }
    
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

