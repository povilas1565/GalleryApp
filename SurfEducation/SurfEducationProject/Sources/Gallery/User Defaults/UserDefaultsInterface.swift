//
//  UserDefaultsInterface.swift
//  Gallery

//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol UserDefaultsInterface {
    func save(value: Any?, withKey key: String)
    func getData(withKey key: String) -> Data?
    func getValue(withKey key: String) -> Any?
    func removeValue(withKey key: String)
}

