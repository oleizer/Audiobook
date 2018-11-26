//
//  UITableViewCellExtensions.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    public class var identifier: String {
        let result = String(describing: self)
        return result
    }
}

public extension UITableViewHeaderFooterView {
    public class var identifier: String {
        let result = String(describing: self)
        return result
    }
}
