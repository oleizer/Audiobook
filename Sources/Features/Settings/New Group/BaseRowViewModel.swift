//
//  BaseRowViewModel.swift
//  Audiobook
//
//  Created by Олег Лейзер on 23/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Foundation

protocol BaseModelProtocol {
//    var type: SettingType { get }
    var title: String { get }
}

class BaseRowViewModel: BaseModelProtocol {
    let title: String
    let showSeparator: Bool

    init(title: String, showSeparator: Bool) {
        self.title = title
        self.showSeparator = showSeparator
    }
}
