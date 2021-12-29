//
//  ContentView.swift
//  SwiftUITabBar
//
//  Created by Champ on 29/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Settings")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
