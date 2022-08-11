//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
@testable import InstaGallery

internal struct PagingMother {
    internal static func paging() -> PagingDTO {
        return PagingDTO(cursors: IGCursorMother.cursor(), next: "nextPage")
    }
}
