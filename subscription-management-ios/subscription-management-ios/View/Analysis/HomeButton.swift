//
//  HomeButton.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/23.
//

import SwiftUI

struct HomeButton: View {
    var body: some View {
        Button {
            print("一覧画面へ遷移")
        } label: {
            Image("toHome")
        }
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton()
            .previewLayout(.sizeThatFits)
    }
}
