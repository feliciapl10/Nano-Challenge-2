//
//  ImageViewPage.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

// ini bikin progress bar
struct ImageViewPage: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ScrollView {
            VStack(alignment:.leading) {
                
                Text("What is image view?")
                    .font(
                        .system(size: 26, weight: .semibold)
                    )
                    .padding(.horizontal, 15)
                    .padding(.top, 40)
                
                Image("image view content")
                    .resizable()
                        .frame(width: 330.0, height: 200.0)
                        .centerHorizontally()
                
                Text("An image view displays a single image, an animated sequence of images on a background. Within an image view, you can stretch, scale, size to fit, or pin the image to a specific location. Image views are typically not interactive.")
                    .padding(.horizontal, 15)
                    .frame(height: 170)
                
                Text("Best practices")
                    .font(
                        .system(size: 26, weight: .semibold)
                    )
                    .padding(.horizontal, 15)
                
                Text("Use an image view when the primary purpose of the view is simply to display an image. If you want the image to be interactive, configure a system-provided button to display the image instead of adding button behaviors to an image view.")
                    .padding(.horizontal, 15)
                    .frame(height: 170)
                
                Text("If you want to display an icon in your interface, consider using a symbol or interface icon instead of an image view. An interface icon (also called a glyph or template image) is typically a bitmap image in which the nontransparent pixels can receive color. Both symbols and interface icons can use the accent colors people choose.")
                    .padding(.horizontal, 15)
                    .frame(height: 200)
                
                Text("Content")
                    .font(
                        .system(size: 26, weight: .semibold)
                    )
                    .padding(.horizontal, 15)
                
                Text("An image view can contain image data in PNG, JPEG, and PDF. Take care when overlaying text on images. Compositing text on top of images can decrease both the clarity of the image and the legibility of the text. To help improve the results, ensure the text contrasts well with the image, and consider ways to make the text object stand out, like adding a text shadow or background layer.")
                    .padding(.horizontal, 15)
                    .frame(height: 220)
                
                Text("Aim to use a consistent size for all images in an animated sequence. When you prescale images to fit the view, the system doesn't perform any scaling. In cases where the system must do the scaling, performance is generally better when all images are the same size and shape.")
                    .padding(.horizontal, 15)
                    .frame(height: 220)
                
                Group {
                    Text("Platforms")
                        .font(
                            .system(size: 26, weight: .semibold)
                        )
                    .padding(.horizontal, 15)
                    
                    Text("Image view can be used in iOS and iPadOS without considerations, for other OS devices considerations please check out at...")
                        .padding(.horizontal, 15)
                        .frame(height: 70)
                }
  
                
            }
            .padding(.top, 10)
        }
        .navigationBarTitle("Image View" , displayMode: .inline)
        .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: Button(action : {
                        self.mode.wrappedValue.dismiss()
                    }){
                        HStack{
                            Image(systemName: "chevron.left")
                            Text("Back")
                        }
                        .foregroundColor(Color.orange)
                    })
        
    }
}


struct ImageViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewPage()
    }
}
