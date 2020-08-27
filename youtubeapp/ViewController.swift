//
//  ViewController.swift
//  youtubeapp
//
//  Created by Anthony  Garcia on 8/26/20.
//  Copyright © 2020 Anthony  Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
        
    }


}

