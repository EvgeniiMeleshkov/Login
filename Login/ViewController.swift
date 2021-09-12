//
//  ViewController.swift
//  Login
//
//  Created by Евгений Мелешков on 10.09.2021.
//  Login screen test app..

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotUsernameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot your Password?"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot your Username?"
        } else {
            segue.destination.navigationItem.title = usernameOutlet.text
        }
    }
    
    @IBAction func forgotPasswordButtonPushed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }
    
    
    @IBAction func forgotUsernameButtonPushed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    
    
}

