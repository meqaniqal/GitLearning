//
//  DetailView.swift
//  GitLearning
//
//  Created by Sheldon Lawrence on 3/12/25.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("An app to learn git.")
            .foregroundStyle(Color.red)
            .font(.largeTitle)
            .frame(width: 300, height: 300)
            .background(Color.yellow)
            .cornerRadius(50)
            .border(Color.blue, width: 5)
            .cornerRadius(50)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color.black.opacity(0.9))
    }
}

#Preview {
    DetailView()
}
