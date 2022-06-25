//
//  Theme.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/23.
//

import SwiftUI

private struct ThemeEnvironmentKey: EnvironmentKey {
    static var defaultValue: Theme = .default
}

struct Theme {
    struct Margins {
        /// 0pt
        let zero: CGFloat

        /// 4pt
        let spacing_xxs: CGFloat

        /// 8pt
        let spacing_xs: CGFloat

        /// 12pt
        let spacing_s: CGFloat

        /// 16pt
        let spacing_m: CGFloat

        /// 20pt
        let spacing_l: CGFloat

        /// 32pt
        let spacing_xl: CGFloat
    }

    let margins: Margins
}

extension Theme {
    // デフォルトで適用される共通設定
    static var `default`: Self {
        Self(
            margins: .init(
                zero: .zero,
                spacing_xxs: 4.0,
                spacing_xs: 8.0,
                spacing_s: 12.0,
                spacing_m: 16.0,
                spacing_l: 20.0,
                spacing_xl: 32.0
            )
        )
    }
}

extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeEnvironmentKey.self] }
        set { self[ThemeEnvironmentKey.self] = newValue }
    }
}
