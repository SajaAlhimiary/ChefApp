
//  SectionView.swift
//  ChefApp
//
//  Created by Haneen Behery on 24/05/1444 AH.
//

import SwiftUI

struct SectionView: View {
    let title: String
    let tags: [String]
    @ObservedObject var viewModel : ShuffleViewModel
    /// view body
    var body: some View {
        // Create header like "Cover"
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
            TagList(allTags:self.tags, viewModel: viewModel)
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
    
        .background(Color.white)
    }
}
