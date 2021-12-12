//
//  ContentView.swift
//  FirstApp
//
//  Created by Champ on 12/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsPresented = false
    @State private var backgroundUpdated = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.alertIsPresented = true
                }, label: {
                    Text("Tap Me!")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 24))
                })
                    .frame(width: 200,
                           height: 50,
                           alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .alert(isPresented: $alertIsPresented,
                           content: {
                               Alert(title: Text("Would you like to purchase ?"), primaryButton: .default(Text("Purchase"), action: {
                                   print("start purchase")
                               }), secondaryButton: .cancel(Text("No, Thanks")))
                           })
            }
            .navigationTitle("SwiftUI Alerts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
