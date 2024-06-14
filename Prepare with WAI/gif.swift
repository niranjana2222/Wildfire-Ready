//
//  gif.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable {
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
    
    private let name:String
    
    init (_ name: String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> WKWebView {
       
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")
        let data = try! Data(contentsOf: url!)
        
        webView.load(
            data, mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url!.deletingLastPathComponent())
        return webView
    }
    
}
