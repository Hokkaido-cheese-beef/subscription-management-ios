//
//  GifImageView.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/06/24.
//

import SwiftUI
import WebKit

struct GifImageView: UIViewRepresentable {
    private let name : String
    @Binding var isGifShow: Bool
    
    init(_ name: String, isGifShow: Binding<Bool> = .constant(true)) {
        self.name = name
        self._isGifShow = isGifShow
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if isGifShow {
            uiView.reload()
        } else {
            
        }
    }
}

struct GifImageView_Preview: PreviewProvider {
    static var previews: some View {
        GifImageView("cycle_arrow")
    }
}
