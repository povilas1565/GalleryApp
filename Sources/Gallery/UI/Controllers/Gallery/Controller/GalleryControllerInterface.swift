//
//  GalleryControllerInterface.swift
//  Gallery
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

@objc public protocol GalleryDelegate: AnyObject {
    @objc func didSelect(media :Media)
}

internal protocol GalleryControllerInterface: AnyObject {
    func setupView()
    func reloadData()
    func didSelect(media: Media)
}
