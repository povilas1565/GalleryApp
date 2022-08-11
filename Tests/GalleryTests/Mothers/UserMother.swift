//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
@testable import InstaGallery

internal struct UserMother {
    internal static func user() -> User {
        return User(identifier: "testIdentifier", account: "testAccount", urlAccount: "testAccount", token: "testToken")
    }
}
