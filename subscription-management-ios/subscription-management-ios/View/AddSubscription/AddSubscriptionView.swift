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
                SubscriptionListSelectView(
                    type: $subscriptionListType,
                    screenWidth: geometry.size.width
                )
            }
        }
    }
}

struct AddSubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        AddSubscriptionView()
    }
}
