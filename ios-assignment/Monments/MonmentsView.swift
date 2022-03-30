//
//  MonmentsView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/29.
//

import SwiftUI

struct CoverView: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            Image("cover")
                .resizable()
                .frame(height: 300)
            HStack {
                Text("雪莉玫")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Image("avatar1")
                    .resizable()
                    .frame(width: 70, height: 70)
            }.offset(x: -15, y: 15)
        }
    }
}

struct MonmentView: View {
    let nickName: String
    let avatarName: String
    let text: String
    
    var body: some View {
        HStack (alignment: .top, spacing: 15) {
            Image(avatarName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5){
                Text(nickName)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                Text(text)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct MonmentsView: View {
    var body: some View {
        ScrollView (.vertical) {
            VStack (alignment: .leading, spacing: 10) {
                CoverView()
                VStack (alignment: .leading, spacing: 20) {
                    MonmentView(nickName: "12333", avatarName: "avatar1", text: "content content content contentcontent content content contentcontent content content contentcontent content content content")
                    MonmentView(nickName: "12333", avatarName: "avatar1", text: "content")
                }.padding()
            }
        }
        .navigationTitle("朋友圈")
    }
}

struct MonmentsView_Previews: PreviewProvider {
    static var previews: some View {
        MonmentsView()
    }
}
