//
//  SubscriptionListType.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/07/06.
//

import Foundation

enum SubscriptionListType: CaseIterable {
    case all
    case popular
    case custom
    
    var title: String {
        switch self {
        case .all:
            return "全てのサブスク"

        case .popular:
            return "人気"

        case .custom:
            return "カスタム"
        }
    }
}
