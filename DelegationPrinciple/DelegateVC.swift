//
//  ViewController.swift
//  DelegationPrinciple
//
//  Created by Michael Sidoruk on 03/08/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

class DelegateVC: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? DelegatorVC {
            destinationVC.delegate = self
        }
    }
}

extension DelegateVC: DelegatorDelegate {
    func chosenColor(color: UIColor) {
        colorView.backgroundColor = color
    }
    
    
}

