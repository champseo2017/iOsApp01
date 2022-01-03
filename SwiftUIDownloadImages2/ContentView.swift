//
//  ContentView.swift
//  SwiftUIDownloadImages2
//
//  Created by Champ on 2/1/2565 BE.
//

import SwURL
import SwiftUI

struct ContentView: View {
    init() {
        SwURL.setImageCache(type: .persistent)
    }
    var body: some View {
        NavigationView {
            VStack {
                RemoteImageView(
                    url: URL(string:"https://res.cloudinary.com/dsbwqhnrl/images/f_png,q_auto:good/v1634830856/travel/Wat-Chedi-Luang-www.onealltravel.com_1/Wat-Chedi-Luang-www.onealltravel.com_1.png?_i=AA")!, placeholderImage: Image(systemName: "photo"), transition: .custom(transition: .opacity, animation: .easeIn(duration:0.25)))
                    .progress({progress in
                        return Text("Loading \(progress)")
                    })
                    
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
