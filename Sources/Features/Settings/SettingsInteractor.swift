//
//  SettingsInteractor.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Foundation

protocol SettingsBusinessLogic {

}

struct SettingsInteractor {
    let presenter: SettingsPresentationLogic

    init(presenter: SettingsPresentationLogic) {
        self.presenter = presenter
    }
}

extension SettingsInteractor: SettingsBusinessLogic {

}
