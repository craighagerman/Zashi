//
//  ContentView.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-22.
//

import SwiftUI
//import CoreData


struct ContentViewTapStack: View {
    var body: some View {
        NavigationView {
            TappableStackScreen(title: "Home", text: "First Screen", imageName: "house")
        }.buttonStyle(PlainButtonStyle())
    }
}


struct TappableStackScreen: View {
    @State var active = false
    
    let title: String
    let text: String
    let imageName: String
    
    var body: some View {
        NavigationLink( destination: SecondaryView(), isActive: $active) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(Color.green)
                    .padding()
                
                Text(text)
                    .font(.system(size: 30, weight: .light, design: .default))
                    .foregroundColor(Color.green)
                    .padding()
                
            }.onTapGesture {
                self.active.toggle()
            }.navigationTitle(title)
        }
    }
}


struct SecondaryView: View {
    var body: some View {
        Text("Welcome")
    }
}



struct ContentViewTapStack_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

