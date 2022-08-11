//
//  AuthFactory.swift
//  Gallery
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal class AuthFactory {
    
    internal static func auth(completionCallback: @escaping (() -> Void)) -> AuthController {
        let viewController = AuthController()
        let presenter = AuthPresenter()
        let routing = AuthRouting()
        let interactor = AuthInteractor()
        
        viewController.completionCallback = completionCallback
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.routing = routing
        
        interactor.output = presenter
        presenter.view = viewController
        
        routing.view = viewController
        
        return viewController
    }
    
}
