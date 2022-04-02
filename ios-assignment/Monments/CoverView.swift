//
//  CoverView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/30.
//

import SwiftUI

struct CoverView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            Image(profileModel.coverImage)
                .resizable()
                .frame(height: 300)
            HStack {
                Text(profileModel.nickName)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Image(profileModel.avatar)
                    .resizable()
                    .frame(width: 70, height: 70)
            }.offset(x: -15, y: 15)
        }
    }
}
