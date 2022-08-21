//
//  Constants.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal struct Constants {
    internal struct UserDefaultsKeys {
        static let USERID_KEY = "USER"
        static let TOKEN_KEY = "TOKEN"
        static let USER_NAME = "USER_NICK"
        static let userKey = "User"
    }
    
    internal struct BundleKeys {
        static let appIDKey = "ClientId"
        static let clientSecretKey = "ClientSecret"
        static let redirectURIKey = "RedirectURI"
    }
    
    internal struct ParamsKeys {
        static let accessTokenKey = "access_token"
        static let clientIDKey = "client_id"
        static let redirectURIKey = "redirect_uri"
        static let scopeKey = "scope"
        static let responseTypeKey = "response_type"
    }
}
