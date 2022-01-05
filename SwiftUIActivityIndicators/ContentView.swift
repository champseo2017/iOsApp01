//
//  ContentView.swift
//  SwiftUIActivityIndicators
//
//  Created by Champ on 5/1/2565 BE.
//

import ActivityIndicatorView
import SwiftUI

struct ContentView: View {
    @State var loading = false
    var body: some View {
        NavigationView {
            VStack {
                ActivityIndicatorView(isVisible: $loading, type: .rotatingDots)
                    .foregroundColor(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .padding()
                ActivityIndicatorView(isVisible: $loading, type: .default)
                    .foregroundColor(.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .padding()
                ActivityIndicatorView(isVisible: $loading, type: .equalizer)
                    .foregroundColor(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .padding()
                Button(action: {
                    self.loading = true
                }, label: {
                    Text("Load Data")
                        .bold()
                        .frame(width: 220, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                })
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
