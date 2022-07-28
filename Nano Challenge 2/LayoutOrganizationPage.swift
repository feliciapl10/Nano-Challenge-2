//
//  LayoutOrganizationPage.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 27/07/22.
//

import SwiftUI

struct LayoutOrganizationPage : View {
    
    //Data Struct - List of Array
    let items = [
        Gambar(image: "image views thumbnail"),
        Gambar(image: "text views thumbnail"),
        Gambar(image: "web views thumbnail"),
    ]
    
    
    let spacing: CGFloat = 25
    @State private var numberOfRows = 1
    
    var body: some View {
        
        // Column and Spacing
        let column = Array(
            repeating: GridItem( spacing: spacing),
            count: numberOfRows
        )
        
        //Navigation View
        NavigationView {
            //Scroll View
            ScrollView{
                //Vertical Grid
                LazyVGrid(columns: column, spacing: spacing) {
                    //Looping Data
                    ForEach(items, id:\.id){ item in
                        GeometryReader{ reader in
                            let imageWidth :CGFloat =  reader.size.width
                            
                            //Healthy Tips
                            VStack(spacing: 50) {
                                Image(item.image)
                                    .resizable()
                                    .frame(width: imageWidth)
                                    .scaledToFit()
                            }
                            .frame(height: reader.size.height)
                            
                            
                        }
                        .frame(height: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
                    }
                }
                .padding(.horizontal, 120)
                .padding(.top, 350)
                .padding(.bottom)
                
                
            }
            
        }
        
    }
}

struct LayoutOrganizationPage_Previews: PreviewProvider {
    static var previews: some View {
        LayoutOrganizationPage()
    }
}
