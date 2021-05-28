//
//  NewsCardView.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-27.
//

import SwiftUI


struct NewsCard: View {
    var headline: String
    var url: String
    var imageName: String
    var publisher: String
    var whenPublished: String
    
    @State var active = false
    @State var navTitle = "Zashi"

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
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .foregroundColor(.black)
                    Text(publisher)
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



