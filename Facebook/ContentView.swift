//
//  ContentView.swift
//  Facebook
//
//  Created by Champ on 14/12/2564 BE.
//

import SwiftUI
struct FBPostModel: Hashable {
    let name: String
    let post: String
    let imageName: String
}

struct ContentView: View {
    @Binding var text: String
    let facebookBlue = UIColor(red: 23 / 255.0, green: 120 / 255.0, blue: 242 / 255.0, alpha: 1)
    let stories = ["story1", "story2", "story3", "story1", "story2", "story3"]
    let posts: [FBPostModel] = [
        FBPostModel(name: "Dog 1", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ", imageName: "story1"),
        FBPostModel(name: "Dog 2", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ", imageName: "story2"),
        FBPostModel(name: "Dog 3", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ", imageName: "story3"),
    ]
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
                .cornerRadius(13)
                .padding(.horizontal, 15)
            ZStack {
                Color(.secondarySystemBackground)
                ScrollView(.vertical) {
                    VStack {
                        StoriesView(stories: stories)
                        ForEach(posts, id: \.self) { model in
                            FBPost(model: model)
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
            .preferredColorScheme(.light)
    }
}
