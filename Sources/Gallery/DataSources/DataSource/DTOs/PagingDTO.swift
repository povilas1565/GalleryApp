//
//  PagingDTO.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal struct PagingDTO: Codable {
    internal let cursors: CursorDTO
    internal let next: String?
}
