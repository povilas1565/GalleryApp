//
//  GalleryRouting.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.

//

import Foundation
import UIKit

internal class GalleryRouting {
    weak var viewController: UIViewController?
}

extension GalleryRouting: GalleryRoutingInterface {
    func dismiss() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
    func presentLoginUser(completionCallback: @escaping (() -> Void)) {
        let authController = AuthFactory.auth(completionCallback: completionCallback)
        let navigationController = UINavigationController(rootViewController: authController)
        navigationController.modalPresentationStyle = .overCurrentContext
        navigationController.modalTransitionStyle = .crossDissolve
        viewController?.present(navigationController, animated: true, completion: nil)
    }
}
