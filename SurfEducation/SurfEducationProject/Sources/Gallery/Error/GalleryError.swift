//
//  GalleryError.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//
import Foundation

enum GalleryError: Error {
    case invalidUser
    case invalidRequest
    case invalidResponse
    case unexpected(code : Int)
}
