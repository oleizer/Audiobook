////
////  LoadingCollectionViewDataSource.swift
////  Audiobook
////
////  Created by Олег Лейзер on 27/11/2018.
////  Copyright © 2018 Олег Лейзер. All rights reserved.
////
//
//import UIKit
//
//public extension Array {
//    public subscript(safe index: Int) -> Element? {
//        return indices.contains(index) ? self[index] : nil
//    }
//}
//
//public struct LoadingCollectionCellViewModel {
//    public let cellType: UICollectionViewCell.Type
//    
//    public init(cellType: UICollectionViewCell.Type) {
//        self.cellType = cellType
//    }
//}
//
//
//class LoadingCollectionViewDataSource: NSObject, UICollectionViewDataSource {
//    private let appearance: Configuration
//    private var customLoadingCellsViewModels: [LoadingCollectionCellViewModel]?
//    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return appearance.defaultNumberOfSection
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        guard let customViewModels = customLoadingCellsViewModels else {
//            return appearance.defaultNumberOfRowsInSection
//        }
//        return customViewModels.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let customViewModels = customLoadingCellsViewModels,
//            let viewModel = customViewModels[safe: indexPath.row] else {
//                return UICollectionViewCell()
////                    tableView.dequeueReusableCellWithRegistration(DefaultLoadingTableViewCell.self) ?? UITableViewCell()
//        }
//        return UICollectionViewCell()
//
////        return tableView.dequeueReusableCellWithRegistration(viewModel.cellType) ?? UITableViewCell()
//    }
//    
//    
//}
//
//extension LoadingCollectionViewDataSource {
//    struct Configuration {
//        let defaultNumberOfSection: Int
//        let defaultNumberOfRowsInSection: Int
//        
//        public init(defaultNumberOfSection: Int = 1, defaultNumberOfRowsInSection: Int = 10) {
//            self.defaultNumberOfSection = defaultNumberOfSection
//            self.defaultNumberOfRowsInSection = defaultNumberOfRowsInSection
//        }
//    }
//}
