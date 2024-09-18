//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 17.09.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let login = "Igor"
    private let password = "123"
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func forgotLoginButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot login?", message: "Your login is \(login)") {
            self.loginTextField.becomeFirstResponder()
        }
    }
    
    @IBAction func forgotPassButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot password?", message: "Your password is \(password)") {
            self.passwordTextField.text = ""
            self.passwordTextField.becomeFirstResponder()
        }
    }
    
    private func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
}

//MARK: - Sugue Methods
extension LoginViewController {
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginTextField.text == login, passwordTextField.text == password else {
            showAlert(title: "Wrong login or password", message: "Please, enter correct login and password")
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = loginTextField.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}
    
    


