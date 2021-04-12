//
//  UserInformation.swift
//  LeisureApp
//
//  Created by 湊航太 on 2021/04/04.
//

import Foundation

struct User {
    private(set) public var nameJP : String
    private(set) public var age : String
    private(set) public var imageName : String
    
    init(nameJP: String, age: String, imageName: String) {
        self.nameJP = nameJP
        self.age = age
        self.imageName = imageName
    }
}
