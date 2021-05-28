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
            VStack{
                NewsCard(headline: "The Big Review: Eastman Romeo LA",
                             url: "https://guitar.com/review/electric-guitar/the-big-review-eastman-romeo-la/",
                             imageName: "Eastman-Romeo-LA-thumbnail",
                             publisher: "guitar.com",
                             whenPublished: "1 hour ago"
                )
                NewsCard(headline: "The Good and the Bad of Vue.js Framework Programming",
                             url: "https://www.altexsoft.com/blog/engineering/pros-and-cons-of-vue-js/",
                             imageName: "vue_thumbnail",
                             publisher: "altexsoft.com",
                             whenPublished: "1 month ago")
                
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

