//
//  ViewController.swift
//  Clima
//
//  Created by Олександр Федоренко on 08.01.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var searchTextView: UITextField!
    



    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func searchPressed(_ sender: UIButton) {
        print(searchTextView.text!)
        searchTextView.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(searchTextView.text!)
        searchTextView.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchTextView.text != ""{
            print(searchTextView.text!)
            return true
        }else{
            searchTextView.placeholder  = "type something"
            return false
            
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        searchTextView.text = ""
    }
}

