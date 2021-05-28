//
//  NewsArticleView.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-27.
//


import SwiftUI
import WebKit

// Create a View that loads a given URL into a WebView
struct UrlView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
        
    }
    

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<UrlView>) {
        
    }
}

// Create a View that loads a given html string into a WebView
struct HtmlView: UIViewRepresentable {
    @Binding var htmltext: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
  
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmltext, baseURL: nil)
    }
}

