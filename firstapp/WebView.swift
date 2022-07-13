//
//  WebView.swift
//  firstapp
//
//  Created by 57block on 2022/7/6.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {

    var url: URL

    func makeUIView(context: Context) -> WKWebView {

        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.configuration.preferences.setValue(true, forKey: "developerExtrasEnabled")
        webView.load(request)
    }
}

