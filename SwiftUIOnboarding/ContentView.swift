//
//  ContentView.swift
//  SwiftUIOnboarding
//
//  Created by Champ on 3/1/2565 BE.
//

import ConcentricOnboarding
import SwiftUI

struct ContentView: View {
    @State var pageIndex = 0
    var body: some View {
        ConcentricOnboardingView(
            pages: [AnyView(OnboardingPage(title: "Send Messages", message: "Send Messages of your friends and send messages in groups!", imageName: "message")), AnyView(OnboardingPage(title: "Notifications", message: "Send Messages of your friends and send messages in groups!", imageName: "bell")), AnyView(OnboardingPage(title: "Profile", message: "Send Messages of your friends and send messages in groups!", imageName: "person.circle"))],
            bgColors: [.pink, .blue, .purple],
            duration: 2.0
        )
    }
}

struct OnboardingPage: View {
    var title: String
    var message: String
    let imageName: String

    var body: some View {
        VStack {
            Spacer()
            Text(title)
                .font(.system(size: 40))
                .bold()
                .foregroundColor(.white)
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(100)
            Text(message)
                .font(.system(size: 28, weight: .light, design: .default))
                .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
