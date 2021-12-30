//
//  ContentView.swift
//  SwiftUILottieAnimations
//
//  Created by Champ on 30/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                LottieView(fileName: "loading2")
                    .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("SwiftUI Lottie")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
