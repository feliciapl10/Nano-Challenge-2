//
//  Onboarding2.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

struct Onboarding2: View {
    
    @State private var willMoveToNextScreen = false
    @State private var isBeginnerSelected: Bool = false
    @State private var isIntermediateSelected: Bool = false
    @State private var isAdvancedSelected: Bool = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        GeometryReader { g in
            
            VStack(alignment:.leading){
                Text("How much do you know about HIG components?")
                    .font(
                        .system(size: 26, weight: .semibold)
                    )
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom, 8)
                    .padding(.top, 56)
                
                Text("Usually, 1 lesson takes around 5 minutes. Don’t worry, you can change this in your profile later.")
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 375)
                    .padding(.horizontal)
                
                // Beginner Button
                  Button(action: {
                      isBeginnerSelected = true
                      isIntermediateSelected = false
                      isAdvancedSelected = false
                    }) {
                        HStack {
                            HStack{
                                Image("beginner")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.trailing)
                                
                                VStack(alignment: .leading){
                                    Text ("Beginner")
                                        .font(.system(size: 18, weight: .semibold))
                                        .padding(.bottom, 2)
                                        .padding(.leading, -6)
                                    
                                    Text ("Have no knowledge about HIG components. We suggest you to learn 3 lessons per day.")
                                        .font(.system(size: 14, weight: .light))
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 180)
                                        .fixedSize()
                                        .padding(.leading, -8)
                                        .padding(.trailing, 10)
                                }
                            }
                            .foregroundColor(.black)
                            .padding()
                        }
                        .frame(width: g.size.width - 32)
                        .background(isBeginnerSelected ? .orange.opacity(0.3): .gray.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .centerHorizontally()
                }
                
                // Intermediate Button
                
                Button(action:{
                    isBeginnerSelected = false
                    isIntermediateSelected = true
                    isAdvancedSelected = false
                }) {
                    HStack {
                            HStack{
                                Image("intermediate")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.trailing)
                                
                                VStack(alignment: .leading){
                                    Text ("Intermediate")
                                        .font(.system(size: 18, weight: .semibold))
                                        .padding(.bottom, 2)
                                        .padding(.leading, -6)
                                    
                                    Text ("Have a few basic knowledge of HIG components. We suggest you to learn 2 lessons per day.")
                                        .font(.system(size: 14, weight: .light))
                                        .frame(width: 182)
                                        .fixedSize()
                                        .padding(.leading, -8)
                                        .padding(.trailing, 10)
                                        .multilineTextAlignment(.leading)
                                }
                            }
                            .padding()
                            .foregroundColor(.black)
                        }
                        .frame(width: g.size.width - 32)
                        .background(isIntermediateSelected ? .orange.opacity(0.3): .gray.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    .centerHorizontally()
                }
                
                // Advanced Button
                Button(action:{
                    
                    isBeginnerSelected = false
                    isIntermediateSelected = false
                    isAdvancedSelected = true
                }) {
                    HStack {
                        HStack{
                            Image("advanced")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .padding(.trailing)
                            
                            VStack(alignment: .leading){
                                Text ("Advanced")
                                    .font(.system(size: 18, weight: .semibold))
                                    .padding(.bottom, 2)
                                    .padding(.leading, -6)
                                
                                Text ("Know most HIG components knowledge but want to learn more. We suggest you to learn 1 lesson per day.")
                                    .font(.system(size: 14, weight: .light))
                                    .frame(width: 184)
                                    .fixedSize()
                                    .padding(.leading, -8)
                                    .padding(.trailing, 10)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .padding()
                        .foregroundColor(.black)
                    }
                    .frame(width: g.size.width - 32)
                    .background(isAdvancedSelected ? .orange.opacity(0.3): .gray.opacity(0.3))
                    .cornerRadius(10)
                    .padding(.horizontal)
                .centerHorizontally()
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
            .navigate(to: Onboarding3(), when: $willMoveToNextScreen)
            
        }
        
    }
    
}

struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}

