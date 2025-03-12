//
//  ContentView.swift
//  GitLearning
//
//  Created by Sheldon Lawrence on 3/12/25.
//

import SwiftUI
//test new donothing commit with only this comment as a change.
struct ContentView: View {
    var body: some View {
        //enable NavigationLinks
        NavigationStack {
            VStack {
                //Here's Navigation link to DetailView()
                NavigationLink {
                    DetailView()
                //label for the link
                } label: {
                    Text("Git learning app")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
