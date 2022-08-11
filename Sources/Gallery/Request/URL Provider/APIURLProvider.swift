//
//  APIURLProvider.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal struct APIURLProvider: URLBaseProvider {
    var tokenURL: URL {
        return API.appendingPathComponent("access_token")
    }
    
    var refreshToken: URL {
        return API.appendingPathComponent("refresh_access_token")
    }
    
    var userURL: URL {
        return API.appendingPathComponent("me")
    }
    
    var mediaURL: URL {
        return API.appendingPathComponent("me/media")
    }
}
