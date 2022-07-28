////
////  OffsetPageTabView.swift
////  Nano Challenge 2
////
////  Created by Felicia Prisqilla on 27/07/22.
////
//
//import SwiftUI
//
//// Custom view that will return offset for paging control
//struct OffsetPageTabView: View<Content: View>: UIViewRepresentable {
//
//    var content: Content
//    @Binding var offset: CGFloat
//
//    func makeCoordinator() -> Coordinator {
//        return OffsetPageTabView.Coordinator(parent: self)
//    }
//
//    init(offset: Binding<CGFloat>, @ViewBuilder content: @escaping()->Content){
//
//        self.content = content()
//        self.offset = offset
//    }
//
//    func makeUIView(context: Context) -> UIScrollView{
//
//        let scrollView = UIScrollView()
//
//        // Extracting SwiftUIView and embedding into UIKit ScrollView
//        let hostview = UIHostingController(rootView: content)
//        hostview.view.translatesAutoresizingMaskIntoConstraints = false
//
//        let constraints = [
//            hostview.view.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            hostview.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            hostview.view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            hostview.view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//
//            // if you are using vertical paging then don't declare height constraint
//            hostview.view.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
//
//        ]
//
//        scrollView.addSubview(hostview.view)
//        scrollView.addConstraints(constraints)
//
//        //enabling paging
//        scrollView.isPagingEnabled = true
//        scrollView.showsVerticalScrollIndicator = false
//        scrollView.showsHorizontalScrollIndicator = false
//
//        // setting delegate
//        scrollView.delegate = context.coordinator
//
//        return scrollView
//    }
//
//    func updateUIView(_ uiView: UIScrollView, context: Context){
//
//    }
//
//    // Pager offset
//    class Coordinator: NSObject, UIScrollViewDelegate{
//        var parent: OffsetPageTabView
//
//        init(parent: OffsetPageTabView){
//            self.parent = parent
//        }
//
//        func scrollViewDidScroll(_ scrollView: UIScrollView) {
//            let offset = scrollView.contentOffset.x
//
//            parent.offset = offset
//        }
//    }
//
//}
//
//struct OffsetPageTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        Onboarding1()
//    }
//}
