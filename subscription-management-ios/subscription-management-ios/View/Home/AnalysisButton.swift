//
//  AnalysisButton.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/23.
//

import SwiftUI

struct AnalysisButton: View {
    var body: some View {
        Button {
            print("分析画面へ遷移")
        } label: {
            Image("toAnalysis")
        }
    }
}

struct AnalysisButton_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisButton()
            .previewLayout(.sizeThatFits)
    }
}
