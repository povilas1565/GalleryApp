//
//  User.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

public struct User {
    public var identifier :String
    public var account :String
    public var urlAccount :String
    public var token: String?
    
    public func updating(token: String) -> User {
        return User(identifier: identifier, account: account, urlAccount: urlAccount, token: token)
    }
}
