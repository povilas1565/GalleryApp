//
//  UIImageView+Extension.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation
import UIKit

extension UIImageView {
    func imageFromURL(url: URL) {
        self.image = nil
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

            if let requestError = error{
                debugPrint(requestError)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })

        }).resume()
    }
}
