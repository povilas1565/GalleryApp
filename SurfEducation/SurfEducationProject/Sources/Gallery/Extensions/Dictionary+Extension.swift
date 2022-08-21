//
//  Dictionary+Extension.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

extension Dictionary {
    func paramsString() -> String {
        var paramsString = [String]()
        for (key, value) in self {
            guard let stringValue = value as? String, let stringKey = key as? String else {
                return ""
            }
            
            let normalizeValue = stringValue.trimmingCharacters(in: .whitespacesAndNewlines)
            let normalizeKey = stringKey.trimmingCharacters(in: .whitespacesAndNewlines)
            
            paramsString += [normalizeKey + "=" + "\(normalizeValue)"]

        }
        
        return (paramsString.isEmpty ? "" : paramsString.joined(separator: "&"))
    }
}
