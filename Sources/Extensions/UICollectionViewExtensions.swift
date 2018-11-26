//
//  UICollectionViewExtensions.swift
//  Audiobook
//
//  Created by Олег Лейзер on 26/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.identifier)
    }
//    func register<T: UICollectionViewCell>(_ nib: UINib?, withCellClass name: T.Type) {
//        register(nil, forCellWithReuseIdentifier: name.identifier)
//    }

    func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: cellClass.identifier, for: indexPath) as? T else {
            fatalError("Error: cannot dequeue cell with type \(cellClass) for identifier: \(cellClass.identifier)")
        }
        return cell
    }
}

extension UICollectionViewCell {
    public class var identifier: String {
        let result = String(describing: self)
        return result
    }
}
