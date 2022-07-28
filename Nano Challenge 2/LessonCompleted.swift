//
//  LessonCompleted.swift
//  Nano Challenge 2
//
//  Created by Felicia Prisqilla on 26/07/22.
//

import SwiftUI

struct LessonCompleted: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
    }
}

struct LessonCompleted_Previews: PreviewProvider {
    static var previews: some View {
        LessonCompleted()
    }
}

//create array for images (GIF)

var congratsImages : [UIImage]! = [
    UIImage(named: "congrats1")!,
    UIImage(named: "congrats2")!,
    UIImage(named: "congrats3")!,
    UIImage(named: "congrats4")!,
    UIImage(named: "congrats5")!,
    UIImage(named: "congrats6")!,
    UIImage(named: "congrats7")!,
    UIImage(named: "congrats8")!,
    UIImage(named: "congrats9")!,
    UIImage(named: "congrats10")!,
    UIImage(named: "congrats11")!,
    UIImage(named: "congrats12")!,
    UIImage(named: "congrats13")!,
    UIImage(named: "congrats14")!,
    UIImage(named: "congrats15")!,
    UIImage(named: "congrats16")!,
    UIImage(named: "congrats17")!,
    UIImage(named: "congrats18")!,
    UIImage(named: "congrats19")!,
    UIImage(named: "congrats20")!,
    UIImage(named: "congrats21")!,
    UIImage(named: "congrats22")!,
    UIImage(named: "congrats23")!,
    UIImage(named: "congrats24")!,
    UIImage(named: "congrats25")!,
    UIImage(named: "congrats26")!,
    UIImage(named: "congrats27")!,
    UIImage(named: "congrats28")!,
    UIImage(named: "congrats29")!,
    UIImage(named: "congrats30")!,
    UIImage(named: "congrats31")!,
    UIImage(named: "congrats32")!,
    UIImage(named: "congrats33")!,
]

let congratsAnimatedImages = UIImage.animatedImage(with: congratsImages, duration: 1.0)

struct congratsAnimationSequence : UIViewRepresentable{
    
    func makeUIView(context: Context) ->  UIView {
        let seqAnimView = UIView(frame: CGRect(x: 0, y: 0, width: 1024, height: 550))
        let seqImage = UIImageView(frame: CGRect(x:0, y: 0, width: 1024, height: 550))
        seqImage.clipsToBounds = true
        seqImage.layer.cornerRadius = 20
        seqImage.autoresizesSubviews = true
        seqImage.contentMode = UIView.ContentMode.scaleAspectFit
        seqImage.center = seqAnimView.center
        seqImage.image = congratsAnimatedImages
        seqImage.backgroundColor = .white
        seqAnimView.addSubview(seqImage)
        return seqAnimView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<congratsAnimationSequence>) {
        
    }
}
