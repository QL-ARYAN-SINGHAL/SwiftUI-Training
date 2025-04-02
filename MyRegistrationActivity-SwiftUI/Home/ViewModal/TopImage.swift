//
//  TopImage.swift
//  MyRegistrationActivity-SwiftUI
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import SwiftUI

struct TopImage: View {
    var body: some View {
      
            Image("World Civilizations")
          
                .clipShape(Rectangle())
                .frame(width: 400, height: 300)
                .offset(y:-690)
                
        
    }
   
}

#Preview {
    TopImage()
}
