//
//  ProfileModel.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/4/1.
//

import Foundation

@MainActor class ProfileModel: ObservableObject {
    @Published var avatar: String
    @Published var nickName: String
    @Published var coverImage: String
    
    init(avatar: String, nickName: String, coverImage: String) {
        self.avatar = avatar
        self.nickName = nickName
        self.coverImage = coverImage
    }
    
    func changeAvatar() {
        self.avatar = "avatar5"
    }
}
