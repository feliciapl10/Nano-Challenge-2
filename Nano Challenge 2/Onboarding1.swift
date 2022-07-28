//
//  ContentView.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 21/07/22.
//

import SwiftUI

struct Onboarding1: View {
    
    
    @State private var willMoveToNextScreen = false

    
    var body: some View {
        
        VStack(alignment:.leading) {
            
            Text("Learn HIG components to develop the best iOS apps!")
                .font(
                    .system(size: 26, weight: .semibold)
                )
                .padding()
                .padding(.top, 40)
            

            Text("With HiLearn, you’ll learn HIG components through fun, interactive, and bit-sized learning. Remember, learning is often challenging, but some of the most worthwhile things in life are.  HiLearn is here to help you every step of your journey.")
                .padding()
            
            
            Image("human interface guideline ios")
                .resizable()
                    .frame(width: 330.0, height: 200.0)
                    .centerHorizontally()
            
            Spacer()
            HStack {
                Spacer()
                
                Button(action: {
                    willMoveToNextScreen.toggle()
                }) {
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .font(
                                .system(size: 20, weight: .bold)
                            )
                            .frame(width: 50, height: 50, alignment: .center)
                          
                    }
                    .background(Color(red: 1.00, green: 0.79, blue: 0.00))
                    .cornerRadius(50)
                }
            }
            .padding()
            .padding(.top, 50)
        }
        .navigate(to: Onboarding2(), when: $willMoveToNextScreen)
    }
}

struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1()
    }
}
