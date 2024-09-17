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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        clearTextFields()
    }
    
    @IBAction func forgotLoginButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot login?", message: "Your login is \(login)")
    }
    
    @IBAction func forgotPassButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot password?", message: "Your password is \(password)")
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.clearTextFields()
            self.loginTextField.becomeFirstResponder()
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    private func clearTextFields() {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

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
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case loginTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
            // Здесь нужно добавить то же действие что и при нажатии Log In Button
        default:
            break
        }
        return true
    }
    

    

    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}


