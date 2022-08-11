//
//  String+Extensions.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func date() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:SSSZ"
        dateFormatter.locale = .autoupdatingCurrent
        
        let date = dateFormatter.date(from: self) ?? Date()
        return date
    }
    
}
