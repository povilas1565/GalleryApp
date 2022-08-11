import UIKit

@objc public class Gallery: NSObject {
    @objc public static func gallery(withDelegate delegate: GalleryDelegate? = nil) -> GalleryController {
        let galleryController = GalleryFactory.gallery()
        galleryController.delegate = delegate
        
        return galleryController
    }
}
