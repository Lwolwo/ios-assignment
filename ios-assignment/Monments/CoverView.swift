//
//  CoverView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/30.
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
