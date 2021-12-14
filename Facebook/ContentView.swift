//
//  ContentView.swift
//  Facebook
//
//  Created by Champ on 14/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @Binding var text: String
        let facebookBlue = UIColor(red: 23 / 255.0, green: 120 / 255.0, blue: 242 / 255.0, alpha: 1)
    var body: some View {
        VStack {
                    HStack {
                        Text("facebook")
                            .font(.system(size: 48, weight: .bold, design: .default))
                            .foregroundColor(Color(facebookBlue))
                        Spacer()
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 45, height: 45, alignment: .center)
                        .foregroundColor(Color(.secondaryLabel))
                    }
                    .padding()
                    TextField("Search...", text: $text)
                        .padding(7)
                        .background(Color(.systemGray5))
                        .padding(.horizontal, 15)
                        .cornerRadius(7)
                    Spacer()
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
