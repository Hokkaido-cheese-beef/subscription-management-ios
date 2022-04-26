//
//  HomeView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/04/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    CalendarSyncButton()
                        .padding()
                    ScrollView(.vertical) {
                        LazyVStack {
                            // 以下、サブスク一覧を表示
                        }
                    }
                }
                .navigationTitle("登録サブスク一覧")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonTextHidden()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            print("設定ボタンが押された")
                        } label: {
                            Image(systemName: "gearshape")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            print("サブスク追加ボタンが押された")
                        } label: {
                            Image(systemName: "plus.app")
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
