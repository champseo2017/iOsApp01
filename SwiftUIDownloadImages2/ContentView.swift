//
//  ContentView.swift
//  SwiftUIDownloadImages2
//
//  Created by Champ on 2/1/2565 BE.
//

import SwURL
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                RemoteImageView(
                    url: URL(string:"https://res.cloudinary.com/dsbwqhnrl/images/f_png,q_auto:good/v1634830856/travel/Wat-Chedi-Luang-www.onealltravel.com_1/Wat-Chedi-Luang-www.onealltravel.com_1.png?_i=AA")!)
                Text("Loading Images")
            }
            .navigationTitle("Welcome!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
