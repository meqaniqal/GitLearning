//
//  SheetView.swift
//  GitLearning
//
//  Created by Sheldon Lawrence on 3/12/25.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Text("Sheet View displayed")
        Button("Dismiss") {
            dismiss()
        }
    }
}

#Preview {
    SheetView()
}
