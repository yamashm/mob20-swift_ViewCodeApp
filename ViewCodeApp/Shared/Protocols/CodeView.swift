//
//  CodeView.swift
//  ViewCodeApp
//
//  Created by Usuário Convidado on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import Foundation

protocol CodeView{
    func setup()
    func setupComponents()
    func setupConstrains()
    func setupExtraConfigurations()
}

extension CodeView{
    func setup(){
        setupComponents()
        setupConstrains()
        setupExtraConfigurations()
    }
}
