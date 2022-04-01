//
//  MeDetailView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/4/1.
//

import SwiftUI

struct MeDetailView: View {
    @State private var showingActionSheet = false
    
    var body: some View {
        NavigationView {
            VStack (alignment:.leading, spacing: 0) {
                Image("avatar1")
                    .resizable()
                    .scaledToFit()
                    .frame(alignment: .center)
                Spacer()
            }
        }.navigationTitle("个人")
            .toolbar {
                Button {
                    showingActionSheet = true
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("更多"), buttons: [
                    .default(Text("修改头像")) {
                        
                    },
                    .cancel()
                ])
            }
    }
}

struct MeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MeDetailView()
    }
}