//
//  ContentView.swift
//  StatesInSwiftUI
//
//  Created by Champ on 21/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State var isZoomed: Bool = false
    var body: some View {
        Image("Image")
            .resizable()
            .aspectRatio(contentMode: isZoomed ? .fill : .fit)
            .onTapGesture {
                self.isZoomed.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
