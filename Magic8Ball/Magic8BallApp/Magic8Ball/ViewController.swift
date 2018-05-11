//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Ferdinand Avila on 5/8/18.
//  Copyright © 2018 Ferdinand G Avila-Soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func newBallImage()
    {
        // Select random number and update ball face based on number
        randomBallNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    // Update ball face upon button press or shake gesture
    @IBAction func askButtonPressed(_ sender: UIButton)
    {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        newBallImage()
    }
}
