//
//  GalleryFactory.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.

//

import Foundation

public class GalleryFactory {
    public static func gallery() -> GalleryController {
        let viewController = GalleryController()
        let galleryDataSource = GalleryDataSourceImp()
        let presenter = GalleryPresenter()
        let interactor = GalleryInteractor()
        let routing = GalleryRouting()
        
        viewController.presenter = presenter
        galleryDataSource.output = presenter
        
        presenter.interactor = interactor
        presenter.routing = routing
        presenter.galleryDataSource = galleryDataSource
        
        routing.viewController = viewController
        interactor.output = presenter
        presenter.view = viewController
    
        
        
        return viewController
    }
}
