//
//  SubscriptionListSelectView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/07/06.
//

import SwiftUI

struct SubscriptionListSelectView: View {
    @Environment(\.theme) private var theme
    @Binding var type: SubscriptionListType
    let screenWidth: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            HStack(spacing: theme.margins.spacing_m) {
                ForEach(SubscriptionListType.allCases, id: \.self) { type in
                    Button {
                        self.type = type
                    } label: {
                        Text(type.title)
                            .foregroundColor(self.type == type ? Color.black : Color.gray)
                            .frame(width: buttonWidth(), height: 40)
                            .font(.system(size: 16))
                    }
                }
            }
            .padding(.horizontal, theme.margins.spacing_xl)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: buttonWidth(), height: 1.0)
                .offset(x: barOffset(), y: .zero)
                .animation(.linear(duration: 0.3))
            
        }
    }
    
    /// - Returns: ボタンの横幅
    private func buttonWidth() -> CGFloat {
        return (screenWidth - theme.margins.spacing_m - theme.margins.spacing_xl * 2) / 3
    }
    
    /// 選択状態を切り替えた際のバーの位置調整
    /// - Returns: バーをずらす量
    private func barOffset() -> CGFloat {
        switch type {
        case .all:
            return theme.margins.spacing_xl

        case .popular:
            return screenWidth / 3 + theme.margins.spacing_l

        case .custom:
            return screenWidth / (3 / 2) + theme.margins.spacing_s
        }
    }
}

struct SubscriptionListSelectView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionListSelectView(
            type: .constant(.all),
            screenWidth: UIScreen.main.bounds.width)
            .previewLayout(.sizeThatFits)
    }
}
