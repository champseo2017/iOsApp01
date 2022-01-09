//
//  ContentView.swift
//  SwiftUIMap
//
//  Created by Champ on 9/1/2565 BE.
//

import CoreLocation
import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                GeometryReader { proxy in
                    MapView(coordinate: CLLocationCoordinate2D(latitude: 18.796143, longitude: 98.979263))
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                }
            }
            .navigationTitle("SwiftUI Map")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
