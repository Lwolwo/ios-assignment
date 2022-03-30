//
//  MonmentView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/30.
//

import SwiftUI

struct Monment: Identifiable {
    let id: String
    let nickName: String
    let avatarName: String
    let text: String
    let imageName: String?
}

struct MonmentView: View {
    let nickName: String
    let avatarName: String
    let text: String
    let imageName: String?

    var body: some View {
        HStack (alignment: .top, spacing: 15) {
            Image(avatarName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5) {
                Text(nickName)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                Text(text)
                    .foregroundColor(.gray)
                if let imageName = imageName {
                    Image(imageName).resizable()
                        .scaledToFit()
                        .frame(maxHeight: 90)
                }
            }
        }
    }
}
