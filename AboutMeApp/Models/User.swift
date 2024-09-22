//
//  User.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 20.09.2024.
//

struct User {
    let username: String
    let password: String
    
    static func getUser() -> User {
        User(username: "User", password: "123")
    }
}
