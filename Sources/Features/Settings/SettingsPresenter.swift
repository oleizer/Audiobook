//
//  SettingsPresenter.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

protocol SettingsPresentationLogic {
}
struct SettingsPresenter {
    weak var viewController: SettingsDisplayLogic?
}
extension SettingsPresenter: SettingsPresentationLogic { }
