//
//  UICollectionViewExtensions.swift
//  Audiobook
//
//  Created by Олег Лейзер on 26/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

extension UICollectionView {
    enum SectionType: String {
        case header
        case footer
        var stringValue: String {
            switch self {
            case .header:
                return elementKindSectionHeader
            case .footer:
                return elementKindSectionFooter
            }
        }
    }
    ///  Register UICollectionViewCell using class type.
    /// - Parameter cellClass: UICollectionViewCell type.
    func register<T: UICollectionViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.identifier)
    }

    func register<T: UICollectionReusableView>(_ cellClass: T.Type, supplementaryViewOfKind: SectionType) {
        register(cellClass, forSupplementaryViewOfKind: supplementaryViewOfKind.stringValue, withReuseIdentifier: cellClass.identifier)
    }

    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(ofKind kind: SectionType, withClass name: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableSupplementaryView(ofKind: kind.stringValue, withReuseIdentifier: name.identifier, for: indexPath) as? T else {
            fatalError("Couldn't find UICollectionReusableView for \(name.identifier)")
        }
        return cell
    }

    func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: cellClass.identifier, for: indexPath) as? T else {
            fatalError("Error: cannot dequeue cell with type \(cellClass) for identifier: \(cellClass.identifier)")
        }
        return cell
    }
}

//extension UICollectionViewCell {
//    public class var identifier: String {
//        let result = String(describing: self)
//        return result
//    }
//}

extension UICollectionReusableView {
    public class var identifier: String {
        let result = String(describing: self)
        return result
    }
}
