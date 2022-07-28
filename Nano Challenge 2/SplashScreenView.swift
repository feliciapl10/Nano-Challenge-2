//
//  Profile.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 28/07/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.7
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive{
            ContentView()
        } else {
            VStack{
                VStack{
                    Image("HiLearn logo")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
 
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
