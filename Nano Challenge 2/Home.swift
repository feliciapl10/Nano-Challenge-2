//
//  Home.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//
import SwiftUI

struct Asset: Identifiable {
    let id = UUID()
    let image: String
}

struct Horizontal: Identifiable {
    let id = UUID()
    let horizontalImageName: String
}



struct Home: View {
    
// ini kalo misalnya mau ganti warna background dari tab bar jadi warna lain
//    init(){
//        UITabBar.appearance().barTintColor = UIColor.white
//    }
    
    let items = [
        Asset(image: "component thumbnail"),
        Asset(image: "layout organization thumbnail"),
        Asset(image: "menu action thumbnail"),
        Asset(image: "navigation search thumbnail"),
        Asset(image: "presentation thumbnail"),
        Asset(image: "selection input thumbnail"),
        Asset(image: "status thumbnail"),
        Asset(image: "system experience thumbnail"),
    ]
    
    let spacing: CGFloat = 25
    @State private var numberOfRows = 1
    @State private var searchText = ""
//    MainView().environmentObject(Order())
    
    var name : String
    
    // ini ngelempar data nama yang ada di onboarding 3 line 46
    init(name: String){
        self.name = name
    }
    
    var body: some View {

        TabView {
   
            // content page home
                VStack (alignment: .leading){

                        HStack {
                            Spacer()
                            Text("Edit")
                                .font(
                                    .system(size: 18, weight: .light)
                                )
                                .foregroundColor(.orange)
                                .padding()

                        }
                        Text("Hello \(name)!")
                            .font(
                                .system(size: 36, weight: .semibold)
                            )
                            .padding(.leading)
                    
                            Text("All components")
                                .font(
                                    .system(size: 24, weight: .semibold)
                                )
                                .padding(.leading)
                                .padding(.top, 10)
                            
                            ScrollView {
                                LazyVStack(spacing: 10) {
                                    ForEach(items, id:\.id){ item in
                                            
                                        //Vertical Button Link
                                        NavigationLink {
                                            if item.image == "component thumbnail" {
                                                ContentPage()
                                            } else if item.image == "layout organization thumbnail" {
                                                LayoutOrganizationPage()
                                            }
                                        } label: {
                                            ZStack {
                                                Image(item.image)
                                                    .resizable()
                                                    .frame(height: 200)
                                                    .aspectRatio(contentMode: .fill)
                                                    .cornerRadius(15)
                                                
                                                // list nama untuk setiap components
                                                if item.image == "component thumbnail" {
                                                    Text("Component").font(.title).bold().position(x: 100, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else if item.image == "layout organization thumbnail" {
                                                    Text("Organization").font(.title).bold().position(x: 110, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else if item.image == "menu action thumbnail" {
                                                    Text("Menus and Actions").font(.title).bold().position(x: 150, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else if item.image == "navigation search thumbnail" {
                                                    Text("Navigation and Search").font(.title).bold().position(x: 170, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else if item.image == "presentation thumbnail" {
                                                    Text("Presentation").font(.title).bold().position(x: 120, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else if item.image == "selection input thumbnail" {
                                                    Text("Selection and Input").font(.title).bold().position(x: 150, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else if item.image == "status thumbnail" {
                                                    Text("Status").font(.title).bold().position(x: 50, y: 170)
                                                        .foregroundColor(Color.black)
                                                } else {
                                                        Text("System Experiences").font(.title).bold().position(x: 160, y: 170)
                                                            .foregroundColor(Color.black)
                                                }

                                            }
                                        }
                                    }
                                .padding(.horizontal)
                                .padding(.bottom)
                                
                                }
                            }
                            Spacer()
                }
                .tabItem {
                    Label("Learn", systemImage: "graduationcap.fill")
                }
                .navigationBarHidden(true)
            ProfilePage(name: name)
            .tabItem {
                Label("Profile", systemImage: "person.fill")
            }.navigationBarHidden(true)
        }
        .accentColor(Color(UIColor(red: 1.00, green: 0.67, blue: 0.00, alpha: 1.00)))
//        .searchable(text: $searchText)

    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(name: "name")
    }
}
