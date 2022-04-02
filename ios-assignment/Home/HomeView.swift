//
//  HomeView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/29.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            Text("微信页面")
                .tabItem({
                    Image(systemName: "message")
                    Text("微信")
                })
            Text("通讯录页面")
                .tabItem({
                    Image(systemName: "phone")
                    Text("通讯录")
                })
            DiscoveryView()
                .tabItem({
                    Image(systemName: "safari")
                    Text("发现")
                })
            MeView()
                .tabItem({
                    Image(systemName: "person")
                    Text("我")
                })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var profileModel: ProfileModel = ProfileModel(avatar: "avatar1", nickName: "雪莉玫", coverImage: "cover")
    
    static var previews: some View {
        Group {
            HomeView().environmentObject(profileModel)
        }
    }
}
