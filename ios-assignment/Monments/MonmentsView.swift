//
//  MonmentsView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/29.
//

import SwiftUI

struct MonmentsView: View {
    var monments: [Monment] = [
        Monment(id: "1", nickName: "星黛露", avatarName: "avatar2", text: "发张自拍", imageName: "image1", like: nil),
        Monment(id: "2", nickName: "杰拉多尼", avatarName: "avatar3", text: "疫情好严重不能一起出来玩", imageName: nil, like: nil),
        Monment(id: "3", nickName: "玲娜贝儿", avatarName: "avatar4", text: "川沙妲己邀请大家来我家做客，有空的姐妹滴滴我哦，在线等", imageName: nil, like: ["星黛露", "雪莉玫"]),
        Monment(id: "4", nickName: "星黛露", avatarName: "avatar2", text: "发一条很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的朋友圈", imageName: nil, like: ["星黛露"]),

    ]
    var body: some View {
        ScrollView (.vertical) {
            VStack (alignment: .leading, spacing: 10) {
                CoverView()
                VStack (alignment: .leading, spacing: 30) {
                    ForEach(monments, id: \.self.id) { monment in
                        MonmentView(nickName: monment.nickName, avatarName: monment.avatarName, text: monment.text, imageName: monment.imageName, like: monment.like)
                    }
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
