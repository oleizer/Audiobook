//
//  UITableViewExtensions.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

public extension UITableView {
    // MARK: - UITableViewHeaderFooterView
    // MARK: Register
    func registerHeaderFooter<T: UITableViewHeaderFooterView>(_ viewClass: T.Type) {
        register(viewClass, forHeaderFooterViewReuseIdentifier: viewClass.identifier)
    }

    /// Dequeue reusable UITableViewCell using class name for indexPath
    ///
    /// - Parameters:
    ///   - name: UITableViewCell type.
    ///   - indexPath: location of cell in tableView.
    /// - Returns: UITableViewCell object with associated class name.
    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableHeaderFooterView(withIdentifier: cellClass.identifier) as? T else {
            fatalError("Error: cannot dequeue cell with identifier: \(cellClass.identifier)")
        }
        return cell
    }

    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(_ viewClass: T.Type, autoRegistration: Bool = false) -> T? {
        if autoRegistration {
            registerHeaderFooter(viewClass.self)
            guard let view = self.dequeueReusableHeaderFooterView(withIdentifier: viewClass.identifier) as? T else {
                fatalError("Error: cannot dequeue cell with identifier: \(viewClass.identifier)")
            }
            return view
        } else {
            guard let view = self.dequeueReusableHeaderFooterView(withIdentifier: viewClass.identifier) as? T else {
                fatalError("Error: cannot dequeue cell with identifier: \(viewClass.identifier)")
            }
            return view
        }
    }
    func register<T: UITableViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.identifier)
    }

    func register<T: UITableViewCell>(_ nib: UINib?, withCellClass name: T.Type) {
        register(nib, forCellReuseIdentifier: name.identifier)
    }
//    ///  Dequeue reusable UITableViewCell using class name
//    ///
//    /// - Parameter name: UITableViewCell type
//    /// - Returns: UITableViewCell object with associated class name.
//    func dequeueReusableCell<T: UITableViewCell>(_ cellClass: T.Type) -> T {
//        guard let cell = self.dequeueReusableCell(withIdentifier: cellClass.identifier) as? T else {
//            fatalError("Error: cannot dequeue cell with identifier: \(cellClass.identifier)")
//        }
//        return cell
//    }
    ///  Dequeue reusable UITableViewCell using class name
    ///
    /// - Parameter name: UITableViewCell type
    /// - Returns: UITableViewCell object with associated class name.
    func dequeueReusableCell<T: UITableViewCell>(_ cellClass: T.Type, isRegister: Bool = false) -> T? {
        if isRegister {
            register(cellClass)
        }
        guard let cell = self.dequeueReusableCell(withIdentifier: cellClass.identifier) as? T else {
            fatalError("Error: cannot dequeue cell with type \(cellClass) for identifier: \(cellClass.identifier)")
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
        UIView.animate(withDuration: 0, animations: { self.reloadData() }, completion: { _ in completion() })
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
