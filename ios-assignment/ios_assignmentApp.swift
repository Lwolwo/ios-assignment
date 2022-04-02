//
//  ios_assignmentApp.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/29.
//

import SwiftUI

@main
struct ios_assignmentApp: App {
    @StateObject var profileModel: ProfileModel = ProfileModel(avatar: "avatar1", nickName: "雪莉玫", coverImage: "cover")
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(profileModel)
        }
    }
}
