//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
@testable import InstaGallery

internal struct CursorMother {
    internal static func cursor() -> CursorDTO {
        return CursorDTO(after: "cursorAfter", before: "cursorBefore")
    }
}
