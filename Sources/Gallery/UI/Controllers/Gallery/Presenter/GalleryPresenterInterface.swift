//
//  GalleryPresenterInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
import UIKit

internal protocol GalleryPresenterInterface {
    var userName: String? { get }
    var galleryDataSource: GalleryDataSource? { get }
    
    func viewLoaded()
    func selectImage(atIndexPath indexPath: IndexPath)
    func dismiss()
}
