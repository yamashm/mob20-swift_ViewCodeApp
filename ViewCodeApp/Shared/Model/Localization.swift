//
//  Localization.swift
//  ViewCodeApp
//
//  Created by Usuário Convidado on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import Foundation

enum Localization{
    static let welcome = "WELCOME".localized
    static let main = "MAIN".localized
    static let phone = "PHONE".localized
    static let login = "LOGIN_BUTTON".localized
    static let sign = "SIGNUP_BUTTON".localized
}

extension String{
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
}
