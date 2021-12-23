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
        Image(systemName: "bookmark"),
        Image(systemName: "ear"),
        Image("Image"),
        Image("Image"),
    ]
    var body: some View {
        NavigationView {
            List(0 ..< 5) { index in
                NavigationLink(destination: MyImageView(image: self.images[index], index: index)) {
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
    @State var index: Int
    let colors = [
        Color.red,
        Color.blue,
        Color.green,
        Color.purple,
        Color.orange,
    ]
    var body: some View {
        VStack {
            Spacer()
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
        .background(colors[index])
        .onTapGesture {
            if self.index < 4 {
                self.index += 1
            } else {
                self.index = 0
            }
        }
    }
}
