//
//  ContentView.swift
//  SwiftUIDatePicker
//
//  Created by Champ on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    var body: some View {
        NavigationView {
            VStack {
                DatePicker("Trip Date", selection: $date, in: Date()...)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
            }
            .navigationTitle("Select Dates")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
