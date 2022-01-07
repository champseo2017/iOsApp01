//
//  ContentView.swift
//  SwiftUICustomIcons
//
//  Created by Champ on 5/1/2565 BE.
//

import SwiftUI
import SwiftUIFontIcon

struct ContentView: View {
    @State var updateBg = false
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    HStack {
                        Text("Material Icon")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .assistant), fontsize: 45, color: .blue)
                    }.padding()
                    
                    HStack {
                        Text("Material Icon")
                        Spacer()
                        FontIcon.text(.materialIcon(code: MaterialIconCode.sync), fontsize: 45, color: .green)
                    }.padding()
                    
                    HStack {
                        Text("Material Icon")
                        Spacer()
                        FontIcon.button(.ionicon(code: .ios_add_circle), action: {
                            self.updateBg.toggle()
                        }, padding: 0, fontsize: 45, color: .pink)
                    }.padding()
                    
                }
            }
            .background(updateBg ? Color.pink: Color(.systemBackground))
            .navigationTitle("Custom Icons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
