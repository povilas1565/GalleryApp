//
//  GalleryDTO.swift
//  InstaGallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//
import Foundation

internal struct GalleryDTO: Codable {
    internal let data: [MediaDTO]?
    internal let paging: PagingDTO?
}
