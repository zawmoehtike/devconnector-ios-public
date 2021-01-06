//
//  RegisterViewController.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 12/28/20.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goLoginScreen(_ sender: Any) {
        self.performSegue(withIdentifier: "goLoginScreen", sender: self)
    }
    
}
