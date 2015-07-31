//
//  ViewController.swift
//  99RedBalloon
//
//  Created by lapacino on 7/31/15.
//  Copyright (c) 2015 lapacino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var balloonLabel: UILabel!
    
    var count = 0
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageView.image = UIImage(named: "BerlinTVTower.jpg")
        self.balloonLabel.text = "\(count) Balloon"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButton(sender: UIBarButtonItem) {
        
        
        var image1 = UIImage(named: "RedBalloon1.jpg")
        var image2 = UIImage(named: "RedBalloon2.jpg")
        var image3 = UIImage(named: "RedBalloon3.jpg")
        var image4 = UIImage(named: "RedBalloon4.jpg")

        var images = [image1, image2, image3, image4]
        var indexPath = 0
        do {
           indexPath = Int(arc4random_uniform(UInt32(images.count)))
        }while currentIndex == indexPath
        
       currentIndex = indexPath
        
        self.imageView.image = images[indexPath]
        self.balloonLabel.text = "\(count++) Balloon"

        if count == 99 {
            count = 0
        }
    }
    

}

