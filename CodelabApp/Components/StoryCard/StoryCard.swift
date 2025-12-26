//
//  StoryCard.swift
//  Notes
//
//  Created by Mahmoud Emad on 25/12/2025.
//

import SwiftUI

struct StoryCard: View {
    let image:String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60,height: 60)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.red,Color.mint,Color.blue]), startPoint: .leading, endPoint: .trailing),lineWidth: 3)
                }
        }
    }
}

//#Preview {
//    StoryCard()
//}
