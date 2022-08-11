//
//  MediaType.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

@objc public enum MediaType: Int {
    case image
    case video
    case carousel
    case unknow
    
    init(dto: MediaTypeDTO?) {
        guard let dto = dto else {
            self = .unknow
            return
        }
        
        switch dto {
        case .IMAGE: self = .image
        case .VIDEO: self = .video
        case .CAROUSEL_ALBUM: self = .carousel
        }
    }
}
