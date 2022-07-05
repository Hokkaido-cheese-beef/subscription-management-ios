//
//  GifView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/26.
//

import SwiftyGif
import SwiftUI

class Trigger: ObservableObject {
    //Gifの再生トリガーを定義
    @Published var isGifShow:Bool = false
}

struct SwiftyGif: UIViewRepresentable {
    //@ObservedObject var trigger: Trigger
    @Binding var isGifShow: Bool
    
    func makeUIView(context: Context) -> UIImageView {
        //Gifファイルを指定
        let gif = try! UIImage(gifName: "cycle_arrow")
        
        //Gifの再生回数を指定（今回は一回）
        let imageview = UIImageView(gifImage: gif, loopCount: 1)
        imageview.image = gif.resize(size: .init(width: 1, height: 1))
        imageview.contentMode = .scaleAspectFit
        return imageview
    }
    
    func updateUIView(_ gifImageView: UIImageView, context: Context) {
        if isGifShow {
            //トリガーがtrueになったらGifを再生
            gifImageView.startAnimatingGif()
            //gifImageView.loopCount = 1
        } else {
            //トリガーがfalseの際は停止
            //1ループしたら停止
            //gifImageView.stopAnimatingGif()
            //gifImageView.loopCount = 0
//            guard let imagePath = Bundle.main.path(forResource: "cycle_arrow", ofType: "png") else {
//                fatalError("ファイルが見つからない")
//            }
            //gifImageView.image = UIImage(named: "cycle_arrow.png")
            
        }
    }
}
