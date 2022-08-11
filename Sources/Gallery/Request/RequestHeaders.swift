//
//  RequestHeaders.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//


import Foundation

internal struct RequestHeaders {
    internal static var defaultHeaders: [String: String] {
        return [
            "Content-Type": "application/x-www-form-urlencoded",
            "Accept": "application/json"
        ]
    }
}
