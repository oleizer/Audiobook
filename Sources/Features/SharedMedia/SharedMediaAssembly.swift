//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

public class SharedMediaAssembly: Assembly {
    private var initialState: SharedMediaViewController.ViewControllerState?

    public init() { }

    public func set(initialState: SharedMediaViewController.ViewControllerState) -> SharedMediaAssembly {
        self.initialState = initialState
        return self
    }
    public func assembly() -> UIViewController {
        guard let initialState = initialState else {
            fatalError("Initial state parameter was not set")
        }

        var presenter = SharedMediaPresenter()
        let interactor = SharedMediaInteractor(presenter: presenter)
        let viewController = SharedMediaViewController(interactor: interactor, initialState: initialState)
        presenter.viewController = viewController
        return viewController
    }
}
