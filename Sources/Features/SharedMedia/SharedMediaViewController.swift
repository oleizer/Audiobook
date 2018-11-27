//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

protocol SharedMediaDisplayLogic: class {
}

public class SharedMediaViewController: UIViewController {
    private let interactor: SharedMediaBusinessLogic
    private var state: ViewControllerState {
        didSet { self.updateState(state: self.state) }
    }
    lazy private var contentView = self.view as? SharedMediaView
    private let editButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editAction))

    init(interactor: SharedMediaBusinessLogic, initialState: ViewControllerState) {
        self.interactor = interactor
        self.state = initialState
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func loadView() {
        view = SharedMediaView()
        navigationItem.rightBarButtonItem = editButton
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Shared Media"

        state = { state }()
    }
    private func updateState(state: ViewControllerState) {
        switch state {
        case let .initial(type):
            interactor.fetchMedia(with: .init(type: type))
        default:
            break
        }
    }
    @objc private func editAction() {

    }
}
extension SharedMediaViewController {
    public enum ViewControllerState {
        case empty
        case initial(type: SharedMedia.MediaType)
        case edit(type: SharedMedia.MediaType)
    }
}
extension SharedMediaViewController: SharedMediaDisplayLogic { }
