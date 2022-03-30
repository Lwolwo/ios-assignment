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

struct MonmentsView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            CoverView()
            Text("内容")
        }
        .navigationTitle("朋友圈")
    }
}

struct MonmentsView_Previews: PreviewProvider {
    static var previews: some View {
        MonmentsView()
    }
}
