//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Champ on 24/12/2564 BE.
//

import SwiftUI
struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}
struct ContentView: View {
    var items = [Data]()
    var body: some View {
        NavigationView {
            List(items) { data in
                NavigationLink(destination: Text("Some text")) {
                    Image(data.imageName)
                        .resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(data.title)
                        .foregroundColor(.primary)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
            .navigationTitle("Photos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            Data(title: "Beach 1", imageName: "Beach1", imageDescription: "This is a beach", imageTakenDate: "1/1/2020"),
            Data(title: "Beach 1", imageName: "Beach2", imageDescription: "This is a beach", imageTakenDate: "1/1/2020"),
            Data(title: "Beach 1", imageName: "Beach3", imageDescription: "This is a beach", imageTakenDate: "1/1/2020"),
            Data(title: "Beach 1", imageName: "Beach4", imageDescription: "This is a beach", imageTakenDate: "1/1/2020"),
            Data(title: "Beach 1", imageName: "Beach5", imageDescription: "This is a beach", imageTakenDate: "1/1/2020"),
            Data(title: "Beach 1", imageName: "Beach6", imageDescription: "This is a beach", imageTakenDate: "1/1/2020"),
            
        ])
    }
}
