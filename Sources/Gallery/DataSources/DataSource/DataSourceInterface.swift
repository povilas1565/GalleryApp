//
//  DataSourceInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol DataSourceInterface {
    func getUserGallery(withLastItem lastItem: String?, completionHandler: @escaping ((Result<GalleryDTO, InstaGalleryError>) -> Void))
    func getImage(withIdentifier identifier: String, completionHandler: @escaping ((Result<MediaDTO?, InstaGalleryError>) -> Void))
    func authenticate(withUserCode userCode: String, completionHandler: @escaping ((Result<UserDTO, InstaGalleryError>) -> Void))
}
