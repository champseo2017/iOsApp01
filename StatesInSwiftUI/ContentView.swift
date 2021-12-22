//
//  ContentView.swift
//  StatesInSwiftUI
//
//  Created by Champ on 21/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
//    @State var isZoomed: Bool = false
    let images: [Image] = [
        Image("Image"),
        Image("Image"),
        Image("Image"),
        Image("Image"),
        Image("Image")
    ]
    var body: some View {
        NavigationView {
            List(0..<5) { index in
                NavigationLink(destination: MyImageView(image: self.images[index])) {
                    Text("Item \(index + 1)")
                }
            }
        }
//        Image("Image")
//            .resizable()
//            .aspectRatio(contentMode: isZoomed ? .fill : .fit)
//            .onTapGesture {
//                withAnimation {
//                  self.isZoomed.toggle()
//                }
//            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}

struct MyImageView: View {
    let image: Image
    var body: some View {
        image
    }
}
