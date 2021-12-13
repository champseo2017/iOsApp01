//
//  ContentView.swift
//  SwiftUIToDoList
//
//  Created by Champ on 12/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color("myColor"),
                Color(.systemPink),
            ]),
            startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.all, edges: .all)
            VStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width: 220, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                Text("Sunny!")
                    .font(.system(size: 42, weight: .semibold, design: .default))
                    .foregroundColor(Color.white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
