//
//  SubscriptionCellView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/24.
//

import SwiftyGif
import SwiftUI

struct SubscriptionCellView: View {
    @Environment(\.theme) private var theme
    private let cellRatio: CGFloat = 60 / 334
    //@ObservedObject var trigger: Trigger
    @State var isGifShow = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGBLinear, red: 116 / 255, green: 116 / 255, blue: 128 / 255, opacity: 1))
                .background(Color(.sRGBLinear, red: 116 / 255, green: 116 / 255, blue: 128 / 255, opacity: 1).cornerRadius(8))
            .frame(height: (UIScreen.main.bounds.width - (theme.margins.spacing_m + theme.margins.spacing_m) * 2) * cellRatio)
            
            HStack {
                Text("Apple Music") // TODO: サブスク名に差し替え
                    .padding(.leading, theme.margins.spacing_m)
                
                Spacer()
                
                Button {
                    print("詳細")
                    isGifShow.toggle()
                } label: {
                    if isGifShow {
//                        GifImageView("cycle_arrow", isGifShow: $isGifShow)
//                            .frame(width: 40, height: 40)
                        SwiftyGif(isGifShow: $isGifShow)
                            .frame(width: 40, height: 40)
                    } else {
                        Image("cycle_arrow")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
//                    GifImageView("cycle_arrow", isGifShow: $isGifShow)
//                        .frame(width: 40, height: 40)
//                    SwiftyGif(isGifShow: $isGifShow)
//                        .frame(width: 40, height: 40)
                }
                .padding(.top, theme.margins.spacing_xl + theme.margins.spacing_m)
            }
            
        }
        .padding(.all, theme.margins.spacing_xl)
    }
}

struct SubscriptionCellView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionCellView()
            .previewLayout(.sizeThatFits)
    }
}
