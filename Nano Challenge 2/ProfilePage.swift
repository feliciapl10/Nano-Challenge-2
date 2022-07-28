//
//  ProfilePage.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

struct ProfilePage: View {
    
    var name : String
    
    // ini ngelempar data nama yang ada di onboarding 3 line 46
    init(name: String){
        self.name = name
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                ZStack {
                    Text("Profile")
                        .font(
                            .system(size: 20, weight: .semibold)
                        )
                        .centerHorizontally()
                    HStack {
                        Spacer()
                        Text("Edit")
                            .font(
                                .system(size: 18, weight: .light)
                            )
                            .foregroundColor(.orange)
                            .padding(.trailing)
                    }
                }

                
                
                // profile picture and user status
                VStack (alignment: .leading){
                    
                    // profile, name, and bio
                    VStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 150, height: 200)
                            .clipShape(Circle())
                        
                        Text("\(name)")
                            .font(.title)
                            .bold()
                        
                        Text("Lorem ipsum dolor sit amet")
                            .font(
                                .system(size: 16, weight: .light))
                            .italic()
                    }
                    .centerHorizontally()
                    
                    Spacer().frame(height: 30)
                    
                    HStack{
                        HStack{
                            VStack {
                                Image("fire")
                                Text("10")
                                    .font(.system(size: 28, weight: .semibold))
                                Text("days")
                                Text("streak")
                            }
                            .frame(width: 90, height: 140, alignment: .center)
                            .padding(10)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(15)
                           
                            VStack {
                                Image("book")
                                Text("5")
                                    .font(.system(size: 28, weight: .semibold))
                                Text("ongoing")
                                Text("lessons")
                            }
                            .frame(width: 90, height: 140, alignment: .center)
                            .padding(10)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(15)
                            .centerHorizontally()
                            
                            VStack {
                                Image("100")
                                Text("3")
                                    .font(.system(size: 28, weight: .semibold))
                                Text("completed")
                                Text("lessons")
                            }
                            .frame(width: 90, height: 140, alignment: .center)
                            .padding(10)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(15)
                            
                        }
                        .padding(.leading, 24)
                        .padding(.trailing, 24)
                    }
                    .padding(.bottom, 20)
                    
                    Text("Continue where you left off")
                        .font(.system(size: 24, weight: .bold))
                        .padding(.leading, 30)
                }
                // spacer ini supaya si profile dan edit paling atas ga kedorong ke bawah
                Spacer()
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage(name: "name")
    }
}
