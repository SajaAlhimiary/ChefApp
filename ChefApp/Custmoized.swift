//
//  Custmoized.swift
//  ChefApp
//
//  Created by rana omar zaheri on 21/05/1444 AH.
//

import SwiftUI

struct Custmoized: View {
    var characterLimit = 100
    @State private var text = ""
    @State private var fullText: String = ""
    @State private var isShown = false
    var body: some View {
        NavigationView {
            ZStack{
                Color("backi").edgesIgnoringSafeArea(.all)
                
                Image("arr")
                    .resizable()
                
                
                    .frame(width:30, height: 30)
                    .foregroundColor(.black)
                ScrollView {
                    
                   
                    
                    VStack{
                        
                        Text("Set up your menu")
                            .frame(width: 285, height: 50)
                            .font(.custom("SF Pro DisplaySF Pro Display", size: 19))
                        
                            
                            Picker()
                            Spacer()
                                .frame(width: 318, height: 50)
                        }
                    
                        HStack{
                            
                            Text("Your Notes")
                                .font(.custom("SF Pro DisplaySF Pro Display", size: 22))
                            Spacer()
                        }.padding()
                        
                            VStack{
                                Spacer()
                                Spacer()
                                
                                TextEditor(text:$fullText)
                                    .frame(width:335, height: 110, alignment: .trailing)
                                    .onReceive(text.publisher.collect()) {
                                        let s = String($0.prefix(characterLimit))
                                        if text != s {
                                            text = s
                                        }
                                        
                                    }
                                
                            
                                    .padding(10) .overlay(
                                        RoundedRectangle(cornerRadius: 17)
                                        
                                            .stroke(Color.gray, lineWidth: 2 )
                                            .shadow(color:Color("shad"), radius: 9, x: 0, y: 2)
                                            .opacity(0.1)
                                        
                                    )
                                    .frame(width: 285, height: 110)
                              
                                
                                    Button {
                                        isShown.toggle()
                                    } label: {
                                        
                                        Text("Done")
                                        
                                            .font(.custom("SF Pro DisplaySF Pro Display", size: 20))
                                            .foregroundColor(.white)
                                        
                                        
                                            .frame(width: 285, height: 42)
                                        
                                        
                                    }
                                
                                    .buttonStyle(.bordered)
                                    
                                    .background(Color("redi"))
                                    .cornerRadius(10)
                                    .frame(width: 285, height: 450)
                                }
                        
                            }
                      
                    }.padding()
                    
                 }
            .navigationTitle("Custmoized")
            .navigationBarTitleDisplayMode(.inline)
            }
            
        
        
    }
    

struct Custmoized_Previews: PreviewProvider {
    static var previews: some View {
        Custmoized()
    }
}
