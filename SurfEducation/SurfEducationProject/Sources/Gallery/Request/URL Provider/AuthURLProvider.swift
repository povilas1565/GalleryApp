//
//  AuthURLProvider.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//
import Foundation

internal struct AuthURLProvider: URLBaseProvider {
    var authorizeURL: URL {
        return API.appendingPathComponent("oauth/authorize")
    }
    
    var authURL: URL {
        return API.appendingPathComponent("oauth/access_token")
    }
}
