//
//  ViewController.swift
//  SwiftTemplate
//
//  Created by zaharijepasalic on 5/24/18.
//  Copyright © 2018 Klika d.o.o. Sarajevo. All rights reserved.
//

import UIKit

class WelcomeViewController: AppViewControler<WelcomeViewModel> {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func onRegisterClicked(_ sender: Any) {
        showError(error: AppError(code: -1, message: "Not implemented"))
    }

    @IBAction func onLoginClicked(_ sender: Any) {
        WelcomeNavigator().goToLogin(context: self)
    }

}
