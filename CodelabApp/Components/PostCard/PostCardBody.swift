//
//  PostCardBody.swift
//  Notes
//
//  Created by Mahmoud Emad on 25/12/2025.
//

import SwiftUI

struct PostCardBody: View {
    let image:String
    let like_count:Int
    let comment_count:Int
    let view_count:Int
    let description:String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .roundedCorners(20, corners: [.bottomLeft,.topRight,.bottomRight])
            HStack{
                HStack(spacing: 3){
                    Image(systemName: "heart")
                    Text("\(like_count.formattedString())")
                }
                Spacer()
                HStack{
                    Image(systemName: "text.bubble")
                    Text("\(comment_count.formattedString())")
                }
                Spacer()
                HStack{
                    Image(systemName: "eye")
                    Text("\(view_count.formattedString())")
                }
                Spacer()
                HStack{
                    Image(systemName: "bookmark")
                    Text("\(view_count)")
                }
            }
            .font(.callout)
            Text(description)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .foregroundStyle(.gray)
        }
        .padding(.leading,55)
    }
}

//#Preview {
//    PostCardBody()
//}
