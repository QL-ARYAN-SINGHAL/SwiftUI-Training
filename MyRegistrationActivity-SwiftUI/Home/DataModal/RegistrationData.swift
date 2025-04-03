//
//  RegistrationData.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import Foundation

struct Courses:Codable,Hashable{
    var title, professor, credits, time: String?
    var location, description: String?
    var image: String?
}
