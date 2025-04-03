//
//  DescriptionDetailView.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//
//MARK: RESPONSIBILITIES: - 1) DETAIL PAGE OF OUR APPLICATION
//2) CONSIST OF AN IMAGE , COURSE NAME  , PROFESSOR,CREDITS,LOCATION , COURSEINFORMATION , COURSE DECRIPTION
import SwiftUI

struct DescriptionDetailView: View {
    var course: Courses
    
    var body: some View {
        VStack {
            CourseImage(course: course)
            
            Text(course.title!)
                .font(.title)
                .bold()
                .fontDesign(.serif)
                .lineLimit(2) 
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: 350)
                .padding(.bottom, 30)
            
            CourseSubInfo(course: course)
                .padding(.top, -28)
        }
        
        Divider()
            .frame(width: 1000, height: 0.5)
            .background(Color.black)
        
        ScrollView {
            CourseDescription(course: course)
                .padding(.top, -15)
        }
        .navigationTitle(course.title!)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DescriptionDetailView(course: courses[4])
}
