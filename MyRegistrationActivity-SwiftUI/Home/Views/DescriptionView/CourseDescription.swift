//
//  CourseDescription.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import SwiftUI

struct CourseDescription: View {
    var course : Courses
    var body: some View {
        
        ScrollView{
            
            
            VStack{
                
                Text("COURSE INFORMATION")
                    .font(.title2)
                    .bold()
                    .padding()
                    .multilineTextAlignment(.leading)
                    .underline()
            }
            
            VStack{
                Text(course.description!)
                    .font(.body)
                    .padding(15)
                    .fontDesign(.rounded)
                    .fontWeight(.medium)
                    
            }
            
        }
        
    }
}

#Preview {
    CourseDescription(course : courses[1])
}
