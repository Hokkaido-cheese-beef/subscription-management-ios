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
    
    var genreName: String {
        switch self {
        case .music:
            return "音楽"
        case .movie:
            return "動画"
        }
    }
}
