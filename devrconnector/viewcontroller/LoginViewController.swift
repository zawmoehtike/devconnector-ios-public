//
//  LoginViewController.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 12/28/20.
//

import UIKit
import RxSwift
import RxCocoa
import RxGesture

class LoginViewController: UIViewController {

    let viewModel = LoginViewModel()
    let bag = DisposeBag()
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        observeResponse()
    }

    @IBAction func goNewsScreen(_ sender: Any) {
        self.viewModel.loginUser(email: self.textFieldEmail.text ?? "", password: self.textFieldPassword.text ?? "")
    }
    
    @IBAction func goRegisterScreen(_ sender: Any) {
        self.performSegue(withIdentifier: "goRegisterScreen", sender: self)
    }
    
    private func observeResponse() {
        viewModel.dataObs.observeOn(MainScheduler.instance)
            .subscribe(onNext: { (data) in
                print("user \(data)")
                
                UserDefaults.standard.set(data.token, forKey: "token")
                UserDefaults.standard.set(true, forKey: "loggedIn")
                self.performSegue(withIdentifier: "goNewsScreen", sender: self)
            }, onError: { (error) in
                self.showAlert(title: "Error", message: error.localizedDescription)
            },onCompleted: {
                print("complete")
            }).disposed(by: bag)
    }
}
