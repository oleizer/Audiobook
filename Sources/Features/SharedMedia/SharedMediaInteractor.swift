//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

protocol SharedMediaBusinessLogic {
    func fetchMedia(with request: SharedMedia.FetchItems.Request)
}

struct SharedMediaInteractor {
    let presenter: SharedMediaPresentationLogic

    init(presenter: SharedMediaPresentationLogic) {
        self.presenter = presenter
    }
}

extension SharedMediaInteractor: SharedMediaBusinessLogic {
    func fetchMedia(with request: SharedMedia.FetchItems.Request) {
        print("Fetch media")
    }
}
