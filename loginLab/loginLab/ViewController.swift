//
//  ViewController.swift
//  loginLab
//
//  Created by Scout on 2/24/20.
//  Copyright © 2020 Scout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func passwordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToLandingViewController", sender: forgotPasswordButton)
    }
    @IBAction func usernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToLandingViewController", sender: forgotUserNameButton)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else {
            segue.destination.navigationItem.title = username.text
        }
    }

}

