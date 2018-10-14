//
//  WelcomeViewModel.swift
//  SwiftTemplate
//
//  Created by zaharijepasalic on 6/8/18.
//  Copyright © 2018 Klika d.o.o. Sarajevo. All rights reserved.
//

import Foundation

class WelcomeViewModel: AppViewModel {
    var onLoginStatus: ((_ isLogedIn: Bool) -> Void)?
    private let navigator: WelcomeNavigator

    init(navigator: WelcomeNavigator) {
        self.navigator = navigator
    }

    func checkLoginStatus() {
        if SessionStore.get() != nil {
            navigator.goToHome()
        }
    }

    func onLoginClicked() {
        navigator.goToLogin()
    }

    func onRegisterClicked() {
        navigator.goToRegistration()
    }
}
