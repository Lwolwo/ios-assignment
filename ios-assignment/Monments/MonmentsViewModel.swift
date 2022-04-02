//
//  MonmentsViewModel.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/4/2.
//

import Foundation

struct Monment: Identifiable {
    let id: String
    let nickName: String
    let avatarName: String
    let text: String
    let imageName: String?
    let like: [String]?
}


class MonmentsViewModel: ObservableObject {
    @Published var monmentsList: [Monment] = []
    
    func loadData() {
        monmentsList.append(Monment(id: "1", nickName: "星黛露", avatarName: "avatar2", text: "发张自拍", imageName: "image1", like: nil))
        monmentsList.append(Monment(id: "2", nickName: "杰拉多尼", avatarName: "avatar3", text: "疫情好严重不能一起出来玩", imageName: nil, like: nil))
        monmentsList.append(Monment(id: "3", nickName: "玲娜贝儿", avatarName: "avatar4", text: "川沙妲己邀请大家来我家做客，有空的姐妹滴滴我哦，在线等", imageName: nil, like: ["星黛露", "雪莉玫"]))
        monmentsList.append(Monment(id: "4", nickName: "星黛露", avatarName: "avatar2", text: "发一条很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的朋友圈", imageName: nil, like: ["星黛露"]))
    }
}
