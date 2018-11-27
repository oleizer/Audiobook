//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

import Foundation

public enum SharedMedia {
    enum FetchItems {
        struct Request {
            let type: MediaType
        }
    }

    public enum MediaType {
        case picture
        case video
    }
}
