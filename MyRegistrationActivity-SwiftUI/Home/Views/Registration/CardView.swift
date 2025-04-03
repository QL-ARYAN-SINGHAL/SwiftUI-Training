//
//  CardView.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        NavigationView{
            
            List(courses , id : \.self){
                course in
                NavigationLink{
                    DescriptionDetailView(course: course)
                }
                label:{
                    CardRow(course: course)
                        .padding(5)
                  
                        
                }
                
                
            }
            .listStyle(InsetListStyle())
            .navigationTitle(Text("My Courses list : "))
            .padding(.top,14)
        }
        
        
    }
}

#Preview {
    CardView()
}
