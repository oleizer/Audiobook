//
//  BundleExtenstions.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Foundation

protocol Verion {
    var short: String? { get }
}

public extension Bundle {
    
    /**
     Функция для получения детальной версии приложения
     - returns: Строку типа **String**
     - note: пример: 1.0.0 1001
     */
    public func detailedVersionNumber() -> String? {
        let mainBundle = Bundle.main
        guard  let version = mainBundle.infoDictionary?["CFBundleShortVersionString"], let build = mainBundle.infoDictionary?["CFBundleVersion"]  else {
            return nil
        }
        let result = "\(version) (\(build))"
        return result
    }
    /**
     Функция для получения версии приложения
     - returns: Строку типа **String** если включен дебаг то версия будет с препиской (DEV)
     - note: пример: 1.0.0 (DEV)
     */
    public func shortVersionString() -> String? {
        guard var version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
            return nil
        }
        #if DEBUG
        version.append(" (DEV)")
        #endif
        return version
    }
    /**
     Функция для получения версии приложения
     - returns: Строку типа **String** если включен дебаг то версия будет с препиской (DEV)
     - note: пример: 1.0.0 (DEV)
     */
    public func bundleVersion() -> String? {
        guard let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String else {
            return nil
        }
        return version
    }
    
}
