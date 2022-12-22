//
//  Bar.swift
//  ChefApp
//
//  Created by Haneen Behery on 19/05/1444 AH.
//bag gear

import SwiftUI
//message
struct Bar: View {
    struct CustomColor{
        static let ChefGray = Color("ChefGray")
        static let ChefRed = Color("ChefRed")
    }
    var body: some View {
        TabView{
            HomePage()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Explorer")
                }
            
            ChatMain()
                .tabItem{
                    Image(systemName: "paperplane")
                    Text("Massges")
                }
            
            Order()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Order")
                }
            
            Profile()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(Color("AccentColor"))
      
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar()
    }
}
