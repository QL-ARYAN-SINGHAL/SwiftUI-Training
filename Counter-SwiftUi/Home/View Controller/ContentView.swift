//
//  ContentView.swift
//  Counter-SwiftUi
//
//  Created by ARYAN SINGHAL on 02/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    //MARK: INITIAL STATE FOR ALERT
    @State private var isShowingAlert = false
    var body: some View {
        VStack {
            VStack {
                
                Text("Value of count is : \(count)")
                    .foregroundStyle(.white)
                    .font(.system(size: 25, weight: .bold, design: .default))
                
            }
            .padding(60)
        
        HStack{
            
            Button("Increment")
            {
                count += 1
            }
            
            .font(.system(size: 30, weight: .bold, design: .default))
            
            .foregroundStyle(.white)
            .padding(10)
            
            .border(.white, width: 3)
            
            .padding()
            
            
            
            Button("Decrement")
            {
                if count < 1{
                    count = 0
                    //HERE THE ISSHOWINGALERT IS IN TRUE CONDITION DUE TO TOGGLE
                    isShowingAlert.toggle()
                }
                else
                {
                    count -= 1
                }
            }
            
            .font(.system(size: 28, weight: .bold, design: .default))
            
            .foregroundStyle(.white)
            
            .padding(10)
            
            .border(.white, width: 3)
            
            .padding()
        }
            
      //ALERT POP CUSTOMISIZING
        .alert("Limit Reached", isPresented: $isShowingAlert)
            
            {
            Button("Dismiss")
                {
                    //AFTER DISMISS BUTTON CLICKED AGAIN THE STATE CHANGES TO FALSE
                isShowingAlert.toggle()
                }
             } message:{Text("Counter cannot be below 0 ")}
            
               
        }
        .background {
            Color.black
                        .ignoresSafeArea()
                }
    }
        
}

#Preview {
    ContentView()
}
