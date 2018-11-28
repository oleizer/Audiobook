//
//  SettingsAssembly.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

public struct SettingsAssembly: Assembly {
    var initialState: SettingsViewController.ViewControllerState?
    
    public func set(initialState: SettingsViewController.State) -> SettingsAssembly {
        self.initialState = initialState
        return self
    }
    
    func assembly() -> UIViewController {
        var presenter = SettingsPresenter()
        let interactor = SettingsInteractor(presenter: presenter)
        let viewController = SettingsViewController(interactor: interactor)
        presenter.viewController = viewController
        return viewController
    }
}
