//
//  ContentViewNavigation.swift
//  Zashi
//
//  Created by Craig Hagerman on 2021-05-25.
//

import SwiftUI

struct ContentViewNavigation: View {
    var body: some View {
        NavigationView {
            Screen(title: "Home", text: "First Screen", imageName: "house")
        }
    }
}

struct Screen: View {
    
    let title: String
    let text: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
             Text(text)
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            
            NavigationLink(
                destination: Screen(title: "Navigation", text: "Second Screen", imageName: "bell"),
                label: {
                    ContinueButton(color: .pink)
                })
        }
        .navigationTitle(title)
    }
}



struct SecondScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "bell")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text("Second Screen")
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            
            NavigationLink(
                destination: SecondScreen(),
                label: {
                    ContinueButton(color: .green)
                })
        }
        .navigationTitle("Notification")
    }
}


struct ContinueButton: View {
    
    let color: Color
    
    var body: some View {
        Text("Continue")
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct ContentViewNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNavigation()
    }
}
