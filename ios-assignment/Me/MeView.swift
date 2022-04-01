//
//  MeView.swift
//  ios-assignment
//
//  Created by Peijun Luo on 2022/4/1.
//

import SwiftUI

struct MeView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: MeDetailView()) {
                        HStack {
                            Image("avatar1").resizable().scaledToFit().frame(width: 60, height: 60, alignment: .leading)
                            Text("雪莉玫")
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
