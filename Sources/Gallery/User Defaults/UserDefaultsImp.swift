//
//  UserDefaultsImp.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal class UserDefaultsImp: UserDefaultsInterface {
    func save(value: Any?, withKey key: String) {
        guard let value = value else { return }
        
        UserDefaults.standard.set(value, forKey: key)
    }
    
    func getData(withKey key: String) -> Data? {
        return UserDefaults.standard.data(forKey: key)
    }
    
    func getValue(withKey key: String) -> Any? {
        return UserDefaults.standard.object(forKey: key)
    }
    
    func removeValue(withKey key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
