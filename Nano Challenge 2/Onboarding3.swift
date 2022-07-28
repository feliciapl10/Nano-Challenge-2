//
//  SwiftUIView.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

struct Onboarding3: View {
    
    @State private var willMoveToNextScreen = false
    @State private var insertName : String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        GeometryReader { g in
            VStack(alignment: .leading){
                
                Image("card")
                    .resizable()
                        .frame(width: 330.0, height: 220.0)
                        .centerHorizontally()
                        .padding(.top, 80)
                
                Text("Before we start, what should we call you? ")
                    .font(
                        .system(size: 26, weight: .semibold)
                    )
                    .padding(.trailing, 100)
                    .padding(.leading, 18)
                    .padding(.top, 40)
                
                Text("We want to ensure a more personal experience with you while we facilitate your learning journey.")
                    .padding()
                
                HStack{
                
                    Text("Name:")
                    .font(.subheadline)
                    .foregroundColor(Color(UIColor.black))
                    .padding(.leading)
                    .padding(.bottom, -4)
                    
                // insert name here text field
                TextField("Insert Name Here", text: $insertName)
                    .frame(width: g.size.width - 110, height: 50, alignment: .center)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                Spacer()
                
                // Chevron left and right button
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .font(
                                    .system(size: 20, weight: .bold)
                                )
                                .padding()
                                .frame(width: 50, height: 50, alignment: .center)

                        }
                        .background(Color(red: 1.00, green: 0.79, blue: 0.00))
                        .cornerRadius(50)
                    }
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
                .padding(.horizontal,10)
                .padding(.top, 50)
                
            }
            .navigate(to: Onboarding4(name: insertName), when: $willMoveToNextScreen)
        }

    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
