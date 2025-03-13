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
    @State private var showNavigation=false
    var body: some View {
        //enable NavigationLinks
        NavigationStack {
            VStack {
                
                //Here's Navigation link to DetailView()
//                NavigationLink {
//                    DetailView()
                //label for the link
//                } label: {
//                    Text("Git learning app")
//                        .foregroundStyle(.black)
//                        .background(Color.yellow)
//                }
                
                //corresponds to the navigationDestination modifier below, activated by $showNavigation
                Button(action: {
                    showNavigation=true
                }, label: {
                    Text("Go to Detail View")
                        .foregroundStyle(.black)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    })
                .padding(.bottom, 20)
                Button(action: {
                    showSheet=true
                }, label:{
                    Text("Demonstrate Show other sheet")
                       
                        .foregroundStyle(.black)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(10)
                })
                
              
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .background(Color.black.opacity(0.9))
            
            
            .ignoresSafeArea()
            .sheet(isPresented: $showSheet, content: {
                SheetView()
            })
            .navigationDestination(isPresented: $showNavigation) {
                DetailView()
            }
           
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
