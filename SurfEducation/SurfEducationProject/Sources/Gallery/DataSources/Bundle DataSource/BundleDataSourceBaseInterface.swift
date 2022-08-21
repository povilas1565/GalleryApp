//
//  BundleDataSourceBaseInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol BundleDataSourceBaseInterface {
    var bundle: Bundle { get }
    func getStringValueForKey(key: String) -> String
}

extension BundleDataSourceBaseInterface {
    var bundle: Bundle { return Bundle.main }
    
    func getStringValueForKey(key: String) -> String {
        guard let value = bundle.object(forInfoDictionaryKey: key) as? String else { return "" }
        
        return value
    }
}
