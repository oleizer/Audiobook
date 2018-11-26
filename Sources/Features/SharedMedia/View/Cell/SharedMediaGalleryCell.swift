//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

class SharedMediaGalleryCell: UICollectionViewCell {
    private let imageView: UIImageView

    override init(frame: CGRect) {
        self.imageView = UIImageView()

        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView () {
        clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "sample")
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

//        selectedView.isHidden = true
//
//        contentView.addSubview(circleView)
//        circleView.backgroundColor = .red
//        circleView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
    }
}
