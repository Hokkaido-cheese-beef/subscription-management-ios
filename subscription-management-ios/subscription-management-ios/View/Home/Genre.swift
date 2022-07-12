//
//  Genre.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/23.
//

// サブスクリプションのジャンルを管理
import Foundation

enum Genre: CaseIterable {
    case music
    case movie
    case storage
    case book
    case business
    case fashion
    case workcation
    
    var genreName: String {
        switch self {
        case .music:
            return "音楽"
        case .movie:
            return "動画"
        case .storage:
            return "ストレージ"
        case .book:
            return "本・漫画・雑誌"
        case .business:
            return "ビジネス"
        case .fashion:
            return "ファッション"
        case .workcation:
            return "ワーケーション"
        }
    }
}
