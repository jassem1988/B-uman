//
//  ViewController.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/21/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Buttons Actions
    
    @IBAction func humanButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "genderChoice", sender: sender)
        
    }
    
}

