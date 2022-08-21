//
//  Gallery.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal struct Gallery {
    internal let medias: [Media]
    internal let paging: Paging?
    
    init(medias: [Media] = [], paging: Paging? = nil) {
        self.medias = medias
        self.paging = paging
    }
    
    internal func updating(newMedias: [Media]) -> Gallery {
        var oldMedias = medias
        oldMedias.append(contentsOf: newMedias)
        return Gallery(medias: oldMedias, paging: paging)
    }
    
    internal func updating(paging: Paging?) -> Gallery {
        return Gallery(medias: medias, paging: paging)
    }
}
