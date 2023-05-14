//
//  ViewController.swift
//  DC-Lab6-Contest
//
//  Created by Антон Адамсон on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if emailTextField.text?.isEmpty == false {
            performSegue(withIdentifier: "ShowResult", sender: nil)
        } else {
            UIView.animate(withDuration: 0.2, animations: {
                let rigth = CGAffineTransform(translationX: 20, y: 0)
                self.emailTextField.transform = rigth
            }) { (_) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.emailTextField.transform = CGAffineTransform.identity
                })
            }
        }
    }
    
}

