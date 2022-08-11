//
//  GalleryDataSource.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//


import Foundation
import UIKit

internal protocol GalleryDataSource: UICollectionViewDataSource {
    var hasNextPage: Bool { get }
    var nextPage: String? { get }
    var numberOfMedias: Int { get }
    
    func updateGallery(gallery: Gallery)
    func media(atIndexPath indexPath: IndexPath) -> Media
}

internal protocol GalleryDataSourceOutput: AnyObject {
    func loadNextPage()
}
