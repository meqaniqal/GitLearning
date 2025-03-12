//
//  ContentView.swift
//  GitLearning
//
//  Created by Sheldon Lawrence on 3/12/25.
//

import SwiftUI

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
