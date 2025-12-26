//
//  TabbarView.swift
//  Notes
//
//  Created by Mahmoud Emad on 25/12/2025.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
                }
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("New Post")
                .tabItem {
                    Image(systemName: "square.and.pencil")
                }
            Text("profile View")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.mint)
    }
}

#Preview {
    TabbarView()
}
