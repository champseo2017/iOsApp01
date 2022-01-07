//
//  ContentView.swift
//  SwiftUIPopups
//
//  Created by Champ on 7/1/2565 BE.
//

import PopupView
import SwiftUI

struct ContentView: View {
    @State var isShowingPopUp = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isShowingPopUp = true
                }, label: {
                    Text("Show Pop up")
                        .frame(width: 220, height: 50, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                        .background(Color.green)
                        .cornerRadius(8)
                        .padding()
                })
            }
            .popup(isPresented: $isShowingPopUp, type: .toast, position: .top, animation: .easeIn, autohideIn: nil, closeOnTap: true, closeOnTapOutside: false, view: {
                Toast()
            })
            .navigationTitle("Toasts")
        }
    }
}

struct Toast: View {
    var body: some View {
        ZStack {
            Color.blue
            HStack {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .padding()
                Text("You have 32 new messages waiting for you.")
                    .foregroundColor(.white)
            }
            .padding()
        }
        .cornerRadius(12)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
