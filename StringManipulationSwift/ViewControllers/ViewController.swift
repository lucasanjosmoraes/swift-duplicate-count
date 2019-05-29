//
//  ViewController.swift
//  StringManipulationSwift
//
//  Created by Lucas dos Anjos Moraes on 28/05/19.
//  Copyright © 2019 Lucas dos Anjos Moraes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    private var strManipulation: StringManipulation = StringManipulation()
    
    func addObservers() {
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "0 duplications"
        
        textField.delegate = self
        
        addObservers()
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        countLabel.text = "\(strManipulation.countDuplications(textField.text)) duplications"
    }


}
