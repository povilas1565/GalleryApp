//
//  AuthRouting.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//


import Foundation

internal class AuthRouting {
    weak var view: AuthControllerInterface?
}

extension AuthRouting: AuthRoutingInterface {
    func dismiss() {
        guard let view = view else { return }
        
        view.dismissView()
    }
}
