//
//  GalleryRoutingInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.

//

import Foundation

internal protocol GalleryRoutingInterface {
    func dismiss()
    func presentLoginUser(completionCallback: @escaping (() -> Void))
}
