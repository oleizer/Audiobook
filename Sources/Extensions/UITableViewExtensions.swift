//
//  UITableViewExtensions.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

public extension UITableView {
    func register<T: UITableViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.identifier)
    }

    func register<T: UITableViewCell>(_ nib: UINib?, withCellClass name: T.Type) {
        register(nib, forCellReuseIdentifier: name.identifier)
    }
    ///  Dequeue reusable UITableViewCell using class name
    ///
    /// - Parameter name: UITableViewCell type
    /// - Returns: UITableViewCell object with associated class name.
    func dequeueReusableCell<T: UITableViewCell>(_ cellClass: T.Type) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellClass.identifier) as? T else {
            fatalError("Error: cannot dequeue cell with identifier: \(cellClass.identifier)")
        }
        return cell
    }
    /// Dequeue reusable UITableViewCell using class name for indexPath
    ///
    /// - Parameters:
    ///   - name: UITableViewCell type.
    ///   - indexPath: location of cell in tableView.
    /// - Returns: UITableViewCell object with associated class name.
    func dequeueReusableCell<T: UITableViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellClass.identifier, for: indexPath) as? T else {
            fatalError("Error: cannot dequeue cell with identifier: \(cellClass.identifier)")
        }
        return cell
    }
    public func reloadData(with completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }) { _ in
            completion()
        }
    }

    // Remove TableFooterView.
    public func removeTableFooterView() {
        tableFooterView = nil
    }

    // Clear TableFooterView.
    public func clearTableFooterView() {
        tableFooterView = UIView()
    }
}
