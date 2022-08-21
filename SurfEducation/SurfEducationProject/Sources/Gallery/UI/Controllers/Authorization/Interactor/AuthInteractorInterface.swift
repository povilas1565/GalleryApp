//
//  AuthInteractorInterface.swift
//  Gallery
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol AuthInteractorInterface {
    var appID: String { get }
    var redirectURI: String { get }
    var scopes: [UserScope] { get }
    var resposeType: ResponseType { get }
}

internal protocol AuthInteractorInput {
    var authRequest: URLRequest? { get }
    func authenticate(userCode: String)
}

internal protocol AuthInteractorOutput: AnyObject {
    func didAuthenticateUser(user: User)
    func didGetError(error: Error)
}
