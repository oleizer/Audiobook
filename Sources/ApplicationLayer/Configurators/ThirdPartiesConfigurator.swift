//
//  ThirdPartiesConfigurator.swift
//  Business
//
//  Created by Олег Лейзер on 22.02.2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//
import Fabric
import Crashlytics

class ThirdPartiesConfigurator: ConfiguratorProtocol {
    func configure() {
        print("ThirdPartiesConfigurator")

        #if !TARGET_IPHONE_SIMULATOR

        #endif

        #if DEBUG
        #endif

    }
}
