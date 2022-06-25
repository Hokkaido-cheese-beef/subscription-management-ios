//
//  SubscriptionGenreView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/23.
//

import SwiftUI

struct SubscriptionGenreView: View {
    @Environment(\.theme) private var theme
    let genre: Genre
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text(genre.genreName)
                .padding(.vertical, theme.margins.spacing_xs)
                .padding(.horizontal, theme.margins.spacing_xl)
                .border(Color.black, width: 0.5)
            Divider()
                .background(Color.black)
                .frame(height: 1.0)
        }
        .padding(.all, theme.margins.spacing_m)
    }
}

struct SubscriptionGenreView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(Genre.allCases, id: \.self) { genre in
            SubscriptionGenreView(genre: genre)
                .previewLayout(.sizeThatFits)
        }
    }
}
