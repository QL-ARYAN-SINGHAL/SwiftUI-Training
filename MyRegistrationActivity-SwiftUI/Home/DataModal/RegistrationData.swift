//
//  RegistrationData.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import Foundation

struct Courses:Codable,Hashable{
    let title, professor, credits, time: String?
    let location, description: String?
    let image: String?

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case professor = "professor"
        case credits = "credits"
        case time = "time"
        case location = "location"
        case description = "description"
        case image = "image"
    }
}
