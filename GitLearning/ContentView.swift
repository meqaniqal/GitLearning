//
//  ContentView.swift
//  GitLearning
//
//  Created by Sheldon Lawrence on 3/12/25.
//

import SwiftUI
//test new donothing commit with only this comment as a change.
struct ContentView: View {
    @State private var showSheet = false
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
                        .foregroundStyle(.black)
                        .background(Color.yellow)
                }
                Button(action: {
                    showSheet=true
                }, label:{
                    Text("Show sheet")
                        .background(Color.yellow)
                })
              
            }
            .padding()
            .sheet(isPresented: $showSheet, content: {
                SheetView()
            })
        }
    }
}

#Preview {
    ContentView()
}
