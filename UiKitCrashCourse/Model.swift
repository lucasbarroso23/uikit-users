//
//  Model.swift
//  UiKitCrashCourse
//
//  Created by Lucas Barroso IZ on 20/10/2023.
//

import Foundation

struct UserResponse: Decodable {
    let data: [PersonResponse]
}

struct PersonResponse: Decodable {
    let email: String
    let firstName: String
    let lastName: String
}
