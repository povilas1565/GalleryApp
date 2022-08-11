//
//  AuthPresenterInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
import WebKit

internal protocol AuthPresenterInterface: WKNavigationDelegate {
    func viewLoaded()
    func load()
    func dismiss()
}
