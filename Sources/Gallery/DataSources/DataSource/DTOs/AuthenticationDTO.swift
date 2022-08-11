//
//  AuthenticationDTO.swift
//  InstaGallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal struct AuthenticationDTO: Codable {
    internal let accessToken: String?
    internal let userId: Int?
    internal let tokenType: String?
    internal let expiresIn: Int?
    
    private enum CodingKeys :String, CodingKey{
        case accessToken = "access_token"
        case userId = "user_id"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
    }
}
