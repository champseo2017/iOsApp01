//
//  ContentView.swift
//  MVVMWeather
//
//  Created by Champ on 20/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
   @StateObject var viewModel = WeatherViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.userId)
                    .font(.system(size: 32))
                Text(viewModel.id)
                    .font(.system(size: 44))
                Text(viewModel.title)
                    .font(.system(size: 24))
                Text(viewModel.body)
                    .font(.system(size: 24))
            }
            .navigationTitle("Weather MVVM")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
