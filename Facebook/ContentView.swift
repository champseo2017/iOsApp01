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
    let stories = ["story1", "story2", "story3", "story1", "story2", "story3"]
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
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 3) {
                                ForEach(stories, id: \.self) { name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .background(Color.red)
                                        .clipped()
                                }
                            }
                            .padding()
                        }
                        FBPost(name: "Dog 1", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ", imageName: "story1")
                        Spacer()
                        FBPost(name: "Dog 2", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ", imageName: "story2")
                        Spacer()
                        FBPost(name: "Dog 3", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ", imageName: "story3")
                        Spacer()
                    }
                }
            }
            Spacer()
        }
    }
}

struct FBPost: View {
    let name: String
    let post: String
    let imageName: String
    
    var body: some View {
        VStack {
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/ .fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                VStack {
                    HStack {
                        Text(name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            HStack {
                Text(post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Spacer()
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Like")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Comment")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Share")
                })
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
            .preferredColorScheme(.light)
    }
}
