//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Champ on 24/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 ..< 10) { _ in
            Text("Hello, World")
                .foregroundColor(.red)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
