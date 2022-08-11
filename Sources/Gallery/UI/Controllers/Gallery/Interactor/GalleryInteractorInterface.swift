//
//  GalleryInteractorInterface.swift
//  Gallery
//
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
import UIKit

protocol GalleryInteractorInput {
    var userName: String? { get }
    var isLoggedUser: Bool { get }
    
    func logoutUser()
    func loadUserGallery(nexPage: String?)
    func getImage(withImageCover imageCover: Media)
}

protocol GalleryInteractorOutput: AnyObject {
    func didLoadUserGallery(gallery: Gallery)
    func didSelect(media: Media)
}
