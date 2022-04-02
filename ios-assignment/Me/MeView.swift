//
//  MeView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/4/1.
//

import SwiftUI

struct MeView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: MeDetailView()) {
                        HStack {
                            Image(profileModel.avatar).resizable().scaledToFit().frame(width: 60, height: 60, alignment: .leading)
                            Text(profileModel.nickName)
                        }
                    }
                }.listStyle(.plain)
            }
                .navigationTitle("我")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
