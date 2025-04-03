//
//  TopImage.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import SwiftUI

struct CourseImage: View {
    var course: Courses

    var body: some View {
        Image(course.image!)
            .resizable()
            .scaledToFill()
            .frame(width: 400, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10)) //
    }
}

#Preview {
    CourseImage(course: courses[1])
}
