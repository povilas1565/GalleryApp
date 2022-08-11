//
//  AuthControllerInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol AuthControllerInterface: AnyObject {    
    func setupView()
    func dismissView()
    func loadRequest(request: URLRequest)
    func didLoadUser(user: User)
}
