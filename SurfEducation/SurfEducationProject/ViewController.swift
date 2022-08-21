//
//  ViewController.swift
//  GalleryDemo
//
//  Created by Павел Рыжков on 06/08/22.
//

import UIKit
import InstaGallery

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let galleryController = Gallery.gallery(withDelegate: self)
        let navigationController = UINavigationController(rootViewController: galleryController)
        present(navigationController, animated: true, completion: nil)
    }
}

extension ViewController: GalleryDelegate {
    func didSelect(media: Media) {
        debugPrint(media)
    }
}

