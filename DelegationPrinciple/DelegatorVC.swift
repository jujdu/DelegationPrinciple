//
//  DelegatorVC.swift
//  DelegationPrinciple
//
//  Created by Michael Sidoruk on 03/08/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

protocol DelegatorDelegate {
    func chosenColor(color: UIColor)
}

class DelegatorVC: UIViewController {

    @IBOutlet weak var redBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    
    var delegate: DelegatorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func redBtnPressed(_ sender: Any) {
        delegate?.chosenColor(color: .red)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func blueBtnPressed(_ sender: Any) {
        delegate?.chosenColor(color: .blue)
        dismiss(animated: true, completion: nil)
    }
    
}
