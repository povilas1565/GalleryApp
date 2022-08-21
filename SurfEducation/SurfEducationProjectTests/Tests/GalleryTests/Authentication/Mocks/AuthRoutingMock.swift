//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
@testable import InstaGallery

final class AuthRoutingMock: AuthRoutingInterface {

    var invokedDismiss = false
    var invokedDismissCount = 0

    func dismiss() {
        invokedDismiss = true
        invokedDismissCount += 1
    }
}
