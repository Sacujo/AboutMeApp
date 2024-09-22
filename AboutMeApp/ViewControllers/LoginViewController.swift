//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 17.09.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.text = user.username
        passwordTextField.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotLoginButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot login?", message: "Your login is \(user.username)") {
            self.loginTextField.becomeFirstResponder()
        }
    }
    
    @IBAction func forgotPassButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot password?", message: "Your password is \(user.password)") {
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
        guard loginTextField.text == user.username, passwordTextField.text == user.password else {
            showAlert(title: "Wrong login or password", message: "Please, enter correct login and password") {
                self.loginTextField.text = ""
                self.passwordTextField.text = ""
                self.loginTextField.becomeFirstResponder()
            }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        let welcomeVC = tabBarVC?.viewControllers?.first as? WelcomeViewController
        welcomeVC?.user = user
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}
    
    


