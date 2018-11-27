//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

class SharedMediaGalleryCell: UICollectionViewCell {
    private let imageView: UIImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView () {
        clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "sample")
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    func configure(with image: UIImage) {
        imageView.image = image
    }
}
