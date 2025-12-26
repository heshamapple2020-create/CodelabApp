//
//  HomeView.swift
//  Notes
//
//  Created by Mahmoud Emad on 25/12/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                StoryListView()
                PostListView()
            }
            .navigationTitle("Codelab")
            .navigationBarItems(leading: Image(systemName: "pencil.and.outline"),trailing: Image(systemName: "bell.badge.fill"))
        }
    }
}

#Preview {
    HomeView()
}
