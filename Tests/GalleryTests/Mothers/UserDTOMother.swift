//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//
import Foundation
@testable import InstaGallery

internal struct UserDTOMother {
    internal static func user() -> UserDTO {
        return UserDTO(id: "1234", username: "testUser", urlAccount: "testAccount", token: "testToken")
    }
}
