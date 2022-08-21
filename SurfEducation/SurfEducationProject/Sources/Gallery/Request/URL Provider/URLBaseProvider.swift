//
//  URLBaseProvider.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol URLBaseProvider {
    var API: URL { get }
}

extension URLBaseProvider {
    var API: URL {
        return URL(string: "https://pictures.chronicker.fun/api")!
    }

}
