//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

struct SharedMediaAssembly: Assembly {

    func assembly() -> UIViewController {
        var presenter = SharedMediaPresenter()
        let interactor = SharedMediaInteractor(presenter: presenter)
        let viewController = SharedMediaViewController(interactor: interactor)
        presenter.viewController = viewController
        return viewController
    }
}
