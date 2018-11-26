//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

protocol SharedMediaDisplayLogic: class {
}

class SharedMediaViewController: UIViewController {
    private let interactor: SharedMediaBusinessLogic

    lazy private var contentView = self.view as? SharedMediaView

    init(interactor: SharedMediaBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = SharedMediaView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Shared Media"
    }
}

extension SharedMediaViewController: SharedMediaDisplayLogic { }
