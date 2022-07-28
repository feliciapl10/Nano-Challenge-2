//
//  ContentPage.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

// Data Struct
struct Gambar: Identifiable {
    let id = UUID()
    let image: String
}


struct ContentPage : View {
    
    //Data Struct - List of Array
    let items = [
        Gambar(image: "image views thumbnail"),
        Gambar(image: "text views thumbnail"),
        Gambar(image: "web views thumbnail"),
    ]
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    let spacing: CGFloat = 25
    @State private var numberOfRows = 1
    
    var body: some View {
        
        //Scroll View
        ScrollView(.vertical){
            VStack(spacing: 20){
                ForEach(items, id:\.id){ item in
                    
                    NavigationLink {
                        ImageViewPage()
                    } label: {
                        Image(item.image)
                            .resizable()
                            .frame(width: 338, height: 180)
                            .aspectRatio(contentMode: .fill)
                    }
                    
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
                }
                Spacer()
            }
            
        }
        // ini untuk custom navigation bar title biar warnanya orange, tulisannya ga cuma back, dan tulisan tengah di bagian navbar itu kecil
        .navigationBarTitle("Image View" , displayMode: .inline)
        .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: Button(action : {
                        self.mode.wrappedValue.dismiss()
                    }){
                        HStack{
                            Image(systemName: "chevron.left")
                            Text("Home")
                        }
                        .foregroundColor(Color.orange)
                    })
    }
}




struct ContentPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentPage()
    }
}
