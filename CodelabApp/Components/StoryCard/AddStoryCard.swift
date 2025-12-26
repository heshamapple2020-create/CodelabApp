//
//  AddStoryCard.swift
//  Notes
//
//  Created by Mahmoud Emad on 25/12/2025.
//

import SwiftUI

struct AddStoryCard: View {
    var body: some View {
        VStack{
            Image(systemName: "plus.circle")
                .font(.title)
                .foregroundStyle(.white)
                .frame(width: 60,height: 60)
                .background(Color(.blue))
                .clipShape(Circle())
        }
    }
}

#Preview {
    AddStoryCard()
}
