//
//  SharedMediaModel.swift
//  Audiobook
//
//  Created by Олег Лейзер on 27/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Foundation

enum MediaType {
    case image
}

struct SharedMediaModel {
    let mediaType: MediaType
    let date: Date
}
