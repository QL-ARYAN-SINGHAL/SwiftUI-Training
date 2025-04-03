//
//  SubInfo.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import SwiftUI

struct CourseSubInfo: View {
    var course : Courses
    var body: some View {
        VStack{
            HStack{
                Text("Professor")
                    .padding(.trailing,30)
                Text("Credits")
                    .padding(.trailing,30)
                    .padding(.leading,10)
                Text("Location")
            }
            .padding(.bottom,10)
            .font(.system(size: 13))
            .foregroundColor(.black)
            .bold()
            .padding(8)
            
            HStack{
                Text(course.professor!)
                    .padding(.trailing,40)
                Text(course.credits!)
                    .padding(.trailing,30)
                    .padding(.leading,1)
                Text(course.location!)
            }
            
            .font(.system(size: 14))
            .foregroundColor(.white)
            .bold()
            .padding(.bottom,10)
        }
        .padding(4)
      
        .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.green)
                        .shadow(color: Color.cyan, radius: 8, x: 5, y: 10)
                )
       
        
        
    }
}

#Preview {
    CourseSubInfo(course: courses[0])
}
