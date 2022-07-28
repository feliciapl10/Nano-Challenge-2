//
//  Onboarding4.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

struct Onboarding4: View {
    
    @State private var willMoveToNextScreen = false
    
    var name : String
    
    // ini ngelempar data nama yang ada di onboarding 3 line 46
    init(name: String){
        self.name = name
    }
    
    var body: some View {
        
        NavigationView {
            VStack{
                
                Image("books")
                    .resizable()
                        .frame(width: 350.0, height: 180.0)
                        .padding(.bottom, 10)
                
                
                Text("Nice to meet you, \(self.name)! Your HIG journey starts here!")
                    .font(
                        .system(size: 26, weight: .semibold)
                    )
                    .padding()
                
                Text("Put HiLearn and yourself to test for the next 2 weeks, and see how we can accelerate your learning. With HiLearn, you’ll be a HIG master in no time at all! Here’s how we’ll do it together...")
                    .padding()
                
                NavigationLink {
                    Home(name: name)
                } label: {
                    
                    Text("Let's get started")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .medium))
                        .frame(width: 231, height: 51).background(Color(red: 1.00, green: 0.79, blue: 0.00))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 10)
                }
                
            }
            .padding(.top, 100)
            .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct Onboarding4_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding4(name: "Yourname")
        // Yourname itu template kosongnya kalo namanya ga diisi, tapi kalo diisi otomatis berubah
    }
}

