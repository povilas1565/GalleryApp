//
//  UserDataSourceInterface.swift
//  Gallery
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import Foundation

internal protocol UserDataSourceInterface: UserDefaultsInterface {
    var userID: String? { get }
    var userName: String? { get }
    var userToken: String? { get }
    var isUserLogged: Bool { get }
    
    func saveUser(user: UserDTO) throws
    func getUser() -> UserDTO?
    func clearAll()
}
