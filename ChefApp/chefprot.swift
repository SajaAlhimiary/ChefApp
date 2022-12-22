//
//  chefprot.swift
//  ChefApp
//
//  Created by rana omar zaheri on 14/05/1444 AH.
//

import SwiftUI

struct chefprot: View {
    @State private var bookChef = false
    @State var isPresent = false
    var body: some View {
        NavigationView {
            ZStack{
                Color("backi").edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack{
                        ScrollView(.horizontal){
                            
                            HStack(spacing:4){
                                
                                Image("image1")
                                    .resizable()
                                    .cornerRadius(14)
                                
                                    .shadow(radius: 5)
                                    .frame(width:405, height: 310)
                                Image("image2")
                                    .resizable()
                                
                                    .cornerRadius(14)
                                
                                    .shadow(radius: 5)
                                    .frame(width:405, height: 310)
                            }
                        }
                        HStack{
                            VStack{
                                Text("Ahmed Ali")
                                    .font(.custom("SF Pro DisplaySF Pro Display", size: 24))
                                    .padding(.bottom, -10)
                                Image("stars")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 140, height: 40)
                            }
                            Spacer()
                            NavigationLink(destination:    ChatPage()) {
                                Image(systemName: "envelope")
                                    .resizable()
                                    .frame(width: 35, height: 25)
                            }
                           
                           
                            //                            Image("stars")
                            //                                .resizable()
                            //                                .scaledToFit()
                            //                                .frame(width: 140, height: 40)
                            //  rating()
                        }.padding()
                        Text("Born in Spain, Chef Manuel Romero was raised in a family that loved cooking traditional and tasty food. When he was a child, his family moved to the United States, and he developed a passion for cooking by watching, helping, and learning alongside his mother.")
                            .multilineTextAlignment(.leading)
                            .frame(width:370, height: 120, alignment: .topLeading)
                            .foregroundColor(.gray)
                            .font(.custom("SF Compact", size: 16))
                        Divider()
                        NavigationLink(destination:    userreviews()) {
                            HStack{
                                VStack{
                                    Text(" Customer Reviews")
                                        .frame(width:330, height: 19, alignment: .topLeading)
                                        .font(.custom("SF Compact", size: 20))
                                        .foregroundColor(.black)
                                    Text("  4 reviews")
                                        .frame(width:330, height: 18, alignment: .topLeading)
                                        .font(.custom("SF Compact", size: 18))
                                        .foregroundColor(.gray)
                                }
                                Image("ar")
                                    .resizable()
                                    .frame(width:30, height: 30)
                            }
                        }
                    }
                    Divider()
                    NavigationLink(destination:    Mnue()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color("shad"), lineWidth: 1)
                                .frame(width: 360, height: 122)
                                .shadow(color:Color("shad"), radius: 9, x: 0, y: 2)
                            HStack(alignment:.center){
                                VStack{
                                    Text("      Mexican Menu")
                                        .foregroundColor(.black)
                                        .font(.custom("SF Compact", size: 20))
                                    Text("Family Style")
                                        .foregroundColor(.black)
                                    Text("        Price | 200 SR pp")
                                        .foregroundColor(.black)
                                }
                                Spacer()
                                Image("ar")
                                    .resizable()
                                    .frame(width:30, height: 30)
                            }
                        }
                    }
                    .padding()
                    NavigationLink(destination:    Mnue()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color("shad"), lineWidth: 1)
                                .frame(width: 360, height: 122)
                                .shadow(color:Color("shad"), radius: 9, x: 0, y: 2)
                            HStack{
                                VStack{
                                    Text("       American Menu")
                                        .font(.custom("SF Compact", size: 20))
                                        .foregroundColor(.black)
                                    Text("Family Style")
                                        .foregroundColor(.black)
                                    Text("        Price | 200 SR pp")
                                        .foregroundColor(.black)
                                }
                                Spacer()
                                Image("ar")
                                    .resizable()
                                    .frame(width:30, height: 30)
                                    .foregroundColor(.black)
                            }
                        }.padding()
                    }
                    //                    Button(action: {bookChef = true}, label: {
                    //                        Text("Book")
                    //                            .font(.custom("Futura", size: 20))
                    //                            .foregroundColor(.white)
                    //                            .frame(width: 285, height: 39)
                    //                    })
                    //                        .buttonStyle(.bordered)
                    //                        .background(Color("redi"))
                    //                        .cornerRadius(10)
                    //                    }.navigationTitle("Chef info")
                    //                        .navigationBarTitleDisplayMode(.inline)
                    Button {
                        print(" ")
                        isPresent = true
                    } label: {
                        Text("Book")
                        NavigationLink(destination: Booking().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                    }   .padding()
                        .frame(width: 285, height: 48)
                        .font(.title)
                        .foregroundColor(.white)
                        .background(Color("Button"))
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct chefprot_Previews: PreviewProvider {
    static var previews: some View {
        chefprot()
    }
}

