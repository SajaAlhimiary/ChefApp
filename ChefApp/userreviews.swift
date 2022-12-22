//
//  userreviews.swift
//  ChefApp
//
//  Created by rana omar zaheri on 17/05/1444 AH.
//

import SwiftUI

struct userreviews: View {
    
    // var titlee: String
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack{
                    
                    Divider()
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .strokeBorder(Color.gray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                                                                           radius: 8, x:8, y:9)
                            .frame(width: cardAndImageWidth, height: cardHeight)
                            .background(SwiftUI.Color.white)
                        HStack() {
                            Spacer()
                            
                            VStack{
                                LazyVStack(alignment: .leading, spacing: 5) {
                                    Text("Rahaf Omar")
                                        .font(.custom("SF Compact", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                   
                                    Text("We were very satisfied with the Services, everything went as planned. We did not have to do anything but enjoyed our guests and the food. ")
                                        .font(.custom("SF Compact", size: 12))
                                        .foregroundColor(SwiftUI.Color.gray)
                                }
                                
                            }
                            VStack{
                                
                                Text("30-10-2-22")
                                    .font(.custom("SF Compact", size: 12))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                Image("stars")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 125, height: 25)
                               // rating()
                                
                                Spacer()
                                
                            }   .padding()
                            
                        }
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .cornerRadius(cornerRadius)
                    }
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .strokeBorder(Color.gray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                                                                           radius: 8, x:8, y:9)
                            .frame(width: cardAndImageWidth, height: cardHeight)
                            .background(SwiftUI.Color.white)
                        HStack() {
                            Spacer()
                            
                            VStack{
                                LazyVStack(alignment: .leading, spacing: 2) {
                                    Text("Sami Kheald")
                                        .font(.custom("SF Compact", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    Spacer()
                                    Text("the chef did a fantastic job. they put  a fantastic dinner for a family celebration. Highly recommend!")
                                        .font(.custom("SF Compact", size: 12))
                                        .foregroundColor(SwiftUI.Color.gray)
                                }
                                
                            }
                            VStack{
                                
                                Text("09-11-2-22")
                                    .font(.custom("SF Compact", size: 12))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                Image("stars")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 125, height: 25)
                                //rating()
                                Spacer()
                                
                            }   .padding()
                            
                        }
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .cornerRadius(cornerRadius)
                    }
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .strokeBorder(Color.gray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                                                                           radius: 8, x:8, y:9)
                            .frame(width: cardAndImageWidth, height: cardHeight)
                            .background(SwiftUI.Color.white)
                        HStack() {
                            Spacer()
                            
                            VStack{
                                LazyVStack(alignment: .leading, spacing: 2) {
                                    Text("Maram Fahad")
                                        .font(.custom("SF Compact", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    Spacer()
                                    Text("the food was soo good")
                                        .font(.custom("SF Compact", size: 12))
                                        .foregroundColor(SwiftUI.Color.gray)
                                }
                                
                            }
                            VStack{
                                
                                Text("02-12-2-22")
                                    .font(.custom("SF Compact", size: 12))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                Image("stars")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 125, height: 25)
                                //rating()
                                Spacer()
                                
                            }   .padding()
                            
                        }
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .cornerRadius(cornerRadius)
                    }
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .strokeBorder(Color.gray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                                                                           radius: 8, x:8, y:9)
                            .frame(width: cardAndImageWidth, height: cardHeight)
                            .background(SwiftUI.Color.white)
                        HStack() {
                            Spacer()
                            
                            VStack{
                                LazyVStack(alignment: .leading, spacing: 2) {
                                    Text("Saad Mansoor")
                                        .font(.custom("SF Compact", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    Spacer()
                                    Text("great experience!")
                                        .font(.custom("SF Compact", size: 12))
                                        .foregroundColor(SwiftUI.Color.gray)
                                }
                                
                            }
                            VStack{
                                
                                Text("29-12-2-22")
                                    .font(.custom("SF Compact", size: 12))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                Image("stars")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 125, height: 25)
                               // rating()
                                Spacer()
                                
                            }   .padding()
                            
                        }
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .cornerRadius(cornerRadius)
                    }
                    
                    
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                } .navigationTitle("Customer Reviews")
                   // .navigationBarTitleDisplayMode(.inline)
                
                
            }
            }
        }
        private let cardAndImageWidth: CGFloat = 370
        private let cardHeight: CGFloat = 116
        private let imageHeight: CGFloat = 116
        private let cornerRadius: CGFloat = 10
        
        
    }
    
    

struct userreviews_Previews: PreviewProvider {
    
    static var previews: some View {
        
        userreviews()
    }
}
