//
//  MonmentsView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/3/29.
//

import SwiftUI

struct MonmentsView: View {
    @StateObject var viewModel: MonmentsViewModel = MonmentsViewModel()

    var body: some View {
        ScrollView (.vertical) {
            VStack (alignment: .leading, spacing: 10) {
                CoverView()
                VStack (alignment: .leading, spacing: 30) {
                    ForEach(viewModel.monmentsList, id: \.self.id) { monment in
                        MonmentView(nickName: monment.nickName, avatarName: monment.avatarName, text: monment.text, imageName: monment.imageName, like: monment.like)
                    }
                }.padding()
            }
        }.onAppear() {
            viewModel.loadData()
        }
        .navigationTitle("朋友圈")
    }
}

struct MonmentsView_Previews: PreviewProvider {
    static var previews: some View {
        MonmentsView()
    }
}
