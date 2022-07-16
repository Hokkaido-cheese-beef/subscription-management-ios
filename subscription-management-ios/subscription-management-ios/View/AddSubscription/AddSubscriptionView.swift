//
//  AddSubscriptionView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/04/26.
//

import SwiftUI

struct AddSubscriptionView: View {
    @Environment(\.theme) private var theme
    @State private var subscriptionListType: SubscriptionListType = .all
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: .zero) {
                Spacer()
                
                HStack(spacing: .zero) {
                    Spacer()
                    
                    Button {
                        print("検索ボタン")
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(Color.gray)
                    .padding(.trailing, theme.margins.spacing_l + theme.margins.spacing_xxs)
                }
                
                SubscriptionListSelectView(
                    type: $subscriptionListType,
                    screenWidth: geometry.size.width
                )
                
                // TODO: 追加可能サブスク一覧リストを表示
                // 別Viewに切り出し
                List {
                    ForEach(0 ..< 30, id: \.self) { number in
                        Text("\(number)")
                    }
                }
            }
        }
    }
}

struct AddSubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        AddSubscriptionView()
    }
}
