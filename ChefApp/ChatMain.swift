//
//  ChatMain.swift
//  ChefApp
//
//  Created by Haneen Behery on 23/05/1444 AH.
//

import SwiftUI

struct ChatMain: View {
    
    struct CustomColor{
        static let ChefGray = Color("ChefGray")
        static let ChefRed = Color("ChefRed")
    }
   // var titlee: String
    
    var body: some View {
        NavigationView{
            VStack{
                Divider()
                Spacer()
                NavigationLink(destination:ChatPage().navigationBarBackButtonHidden(false)){
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .strokeBorder(CustomColor.ChefGray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                                radius: 8, x:8, y:9)
                            .frame(width: cardAndImageWidth, height: cardHeight)
                            .background(SwiftUI.Color.white)
                        HStack() {
                            Image("chef")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .cornerRadius(60)
                                .padding()
                               
                            VStack{
                                LazyVStack(alignment: .leading, spacing: 2) {
                             Text("Chef Ahmed")
                                        .font(.custom("SF Compact", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    Text("DW I will be available")
                                        .font(.custom("SF Compact", size: 14))
                                        .foregroundColor(SwiftUI.Color.gray)
                                }
                                
                            }
                            VStack{
                                
                                Text("11-10-2-22")
                                    .font(.custom("SF Compact", size: 12))
                                    .fontWeight(.bold)
                                    .foregroundColor(CustomColor.ChefRed)
                                
                                Spacer()
                                
                            }   .padding()
                            
                        }
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .cornerRadius(cornerRadius)
                    }
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .strokeBorder(CustomColor.ChefGray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                            radius: 8, x:8, y:9)
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .background(SwiftUI.Color.white)
                    HStack() {
                        Image("chef2")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .cornerRadius(60)
                            .padding()
                           
                        VStack{
                            LazyVStack(alignment: .leading, spacing: 2) {
                         Text("Chef Ali")
                                    .font(.custom("SF Compact", size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                Text("Ok I will do it")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(SwiftUI.Color.gray)
                            }
                            
                        }
                        VStack{
                            
                            Text("11-10-2-22")
                                .font(.custom("SF Compact", size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(CustomColor.ChefRed)
                            
                            Spacer()
                            
                        }   .padding()
                        
                    }
                    .frame(width: cardAndImageWidth, height: cardHeight)
                    .cornerRadius(cornerRadius)
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .strokeBorder(CustomColor.ChefGray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
                            radius: 8, x:8, y:9)
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .background(SwiftUI.Color.white)
                    HStack() {
                        Image("chefAhmed")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .cornerRadius(60)
                            .padding()
                           
                        VStack{
                            LazyVStack(alignment: .leading, spacing: 2) {
                         Text("Chef Khalid")
                                    .font(.custom("SF Compact", size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                Text("Hello, can I help you?")
                                    .font(.custom("SF Compact", size: 14))
                                    .foregroundColor(SwiftUI.Color.gray)
                            }
                            
                        }
                        VStack{
                            
                            Text("11-10-2-22")
                                .font(.custom("SF Compact", size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(CustomColor.ChefRed)
                            
                            Spacer()
                            
                        }   .padding()
                        
                    }
                    .frame(width: cardAndImageWidth, height: cardHeight)
                    .cornerRadius(cornerRadius)
                }
                
                
//                ZStack {
//                    RoundedRectangle(cornerRadius: cornerRadius)
//                        .strokeBorder(CustomColor.ChefGray, lineWidth: 1).shadow(color:.gray.opacity(1) ,
//                            radius: 8, x:8, y:9)
//                        .frame(width: cardAndImageWidth, height: cardHeight)
//                        .background(SwiftUI.Color.white)
////                    HStack() {
////                        Image("chefAhmed")
////                            .resizable()
////                            .frame(width: 90, height: 90)
////                            .cornerRadius(60)
////                            .padding()
////
////                        VStack{
////                            LazyVStack(alignment: .leading, spacing: 2) {
////                         Text("Chef Ahmed")
////                                    .font(.custom("SF Compact", size: 20))
////                                    .fontWeight(.bold)
////                                    .foregroundColor(Color.black)
////                                Text("Hello hiw can i help you?")
////                                    .font(.custom("SF Compact", size: 14))
////                                    .foregroundColor(SwiftUI.Color.gray)
////                            }
////
////                        }
////                        VStack{
////
////                            Text("11-10-2-22")
////                                .font(.custom("SF Compact", size: 12))
////                                .fontWeight(.bold)
////                                .foregroundColor(CustomColor.ChefRed)
////
////                            Spacer()
////
////                        }   .padding()
////
////                    }
//                    .frame(width: cardAndImageWidth, height: cardHeight)
//                    .cornerRadius(cornerRadius)
//                }
   
         
                
            
                Spacer()
                Spacer()
                Spacer()
                Spacer()
             
             
            } .navigationTitle("Chat")
                .navigationBarTitleDisplayMode(.inline)
            
          
            
        }
    }
    private let cardAndImageWidth: CGFloat = 370
    private let cardHeight: CGFloat = 116
    private let imageHeight: CGFloat = 116
    private let cornerRadius: CGFloat = 10
    
   
}



struct ChatMain_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ChatMain()
    }
}
