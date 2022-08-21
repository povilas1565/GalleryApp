//
//  BundleDataSourceInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal class BundleDataSourceInterfaceImp: BundleDataSourceInterface {}

internal protocol BundleDataSourceInterface: BundleDataSourceBaseInterface {
    var appID: String { get }
    var clientSecret: String { get }
    var redirectURI: String { get }
}

extension BundleDataSourceInterface {
    var appID: String {
        return getStringValueForKey(key: Constants.BundleKeys.appIDKey)
    }
    
    var clientSecret: String {
        return getStringValueForKey(key: Constants.BundleKeys.clientSecretKey)
    }
    
    var redirectURI: String {
        return getStringValueForKey(key: Constants.BundleKeys.redirectURIKey)
    }
}
