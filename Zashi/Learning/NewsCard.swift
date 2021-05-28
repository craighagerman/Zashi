//
//  NewsCard.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-22.
//


import SwiftUI


struct NewsCard_wip: View {
    var image: String
    var title: String
    var type: String
    var price: String
    
    var body: some View {
        
        HStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 5)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.black)
                Text(type)
                    .font(.system(size: 14, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                HStack {
                    Text(price)
                        .font(.system(size: 10, weight: .light, design: .default))
                        .foregroundColor(.black)
                        .padding(.top, 8)
                }
            }
//            .padding(.trailing, 20)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 200/255, green: 200/255, blue: 200/255))
//        .modifier(CardModifier())
        .padding(.all, 5)
        .contentShape(Rectangle())
        .onTapGesture {
            print("Show details for user")
        }
        
    }
}


struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
}


struct NewsCard_wip_Previews: PreviewProvider {
    static var previews: some View {
        NewsCard_wip(image: "Eastman-Romeo-LA-thumbnail",
                    title: "The Big Review: Eastman Romeo LA", type: "guitar.com", price: "1 hour ago")
        
    }
}

