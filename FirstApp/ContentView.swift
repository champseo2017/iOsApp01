//
//  ContentView.swift
//  FirstApp
//
//  Created by Champ on 12/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color(.systemBackground)
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                ColorPicker("Select Color", selection: $backgroundColor)
                    .padding()
            }
            .navigationTitle("Color Picker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
