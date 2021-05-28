//
//  ContentView.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-22.
//

import SwiftUI
import WebKit


struct ContentView: View {
    var body: some View {
        NavigationView {
            NewsListCard(headline: "The Big Review: Eastman Romeo LA",
                         imageName: "Eastman-Romeo-LA-thumbnail",
                         source: "guitar.com",
                         whenPublished: "1 hour ago",
                         navTitle: "foobar")
        }.buttonStyle(PlainButtonStyle())
    }
}


struct NewsListCard: View {
    var headline: String
    var imageName: String
    var source: String
    var whenPublished: String
    var navTitle: String
    
    @State var active = false
//    @State var text = "<html><body><h1>Hello World</h1></body></html>"
//    @State var url = "https://www.yahoo.com"
    @State var url = "https://guitar.com/review/electric-guitar/the-big-review-eastman-romeo-la/"
    
    var body: some View {
        NavigationLink( destination: UrlView(url: url), isActive: $active) {
            HStack(alignment: .center) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.all, 5)
                
                VStack(alignment: .leading) {
                    Text(headline)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.black)
                    Text(source)
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                    HStack {
                        Text(whenPublished)
                            .font(.system(size: 10, weight: .light, design: .default))
                            .foregroundColor(.black)
                            .padding(.top, 8)
                    }
                }
                Spacer()
            }.frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 245/255, green: 245/255, blue: 245/255))
            .padding(.all, 5)
            .contentShape(Rectangle())
            .onTapGesture {
                self.active.toggle()
            }
        }.navigationTitle(navTitle)
    }
}



struct NewsDetailView: View {
    var body: some View {
        Text("Welcome")
    }
}


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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

