//
//  ViewModel.swift
//  MVVMWeather
//
//  Created by Champ on 20/1/2565 BE.
//

import Foundation

// Data needed by view
class WeatherViewModel: ObservableObject {
    @Published var userId: String = "-"
    @Published var id: String = "-"
    @Published var title: String = "-"
    @Published var body: String = "-"
    
    init() {
        fetchWeather()
    }
    func fetchWeather() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
        }
        task.resume()
    }
}
