//
//  ContentView.swift
//  SwiftUICustomIcons
//
//  Created by Champ on 5/1/2565 BE.
//

import SwiftUIFontIcon
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Material Icon")
                    Spacer()
                    FontIcon.text(.materialIcon(code: .assistant), fontsize: 45, color: .blue)
                }.padding()
            }
            .navigationTitle("Custom Icons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
