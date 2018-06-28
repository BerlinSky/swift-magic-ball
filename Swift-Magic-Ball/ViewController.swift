//
//  ViewController.swift
//  Swift-Magic-Ball
//
//  Created by Scarecrow on 6/27/18.
//  Copyright © 2018 SkyMagic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        updateImageView()
    }


    @IBAction func askButtonPressed(_ sender: Any) {
        updateImageView()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImageView()
    }
    
    func updateImageView() {
        randomBallNumber = Int(arc4random_uniform(5)) + 1
        ImageView.image = UIImage(named: "ball\(randomBallNumber)")
    }
}

