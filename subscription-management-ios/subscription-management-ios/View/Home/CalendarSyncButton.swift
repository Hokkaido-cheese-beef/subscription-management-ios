//
//  CalendarSyncButton.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/04/26.
//

import SwiftUI

struct CalendarSyncButton: View {
    var body: some View {
        Button {
            print("カレンダー同期ボタンが押された")
        } label: {
            Text("カレンダー同期")
                .frame(width: UIScreen.main.bounds.width - 160, height: 40, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary, lineWidth: 2)
                )
        }
    }
}

struct CalendarSyncButton_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSyncButton()
            .previewLayout(.sizeThatFits)
    }
}
