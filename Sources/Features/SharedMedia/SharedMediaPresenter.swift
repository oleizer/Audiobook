//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import UIKit

protocol SharedMediaPresentationLogic {

}
struct SharedMediaPresenter {
    weak var viewController: SharedMediaDisplayLogic?
}
extension SharedMediaPresenter: SharedMediaPresentationLogic { }
