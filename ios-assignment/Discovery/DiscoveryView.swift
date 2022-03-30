//
//  DiscoveryView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/29.
//

import SwiftUI

struct CellView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.accentColor)
                .frame(width: 24, height: 24)
                .padding(.trailing, 5)
            Text(name)
        }
    }
}

struct DiscoveryView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MonmentsView()) {
                    CellView(name: "朋友圈", imageName: "circle.circle.fill")
                }
                CellView(name: "游戏", imageName: "gamecontroller.fill")
                CellView(name: "小程序", imageName: "circle.dashed")
            }
                .navigationTitle("发现")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
    }
}
