//
//  Picker.swift
//  ChefApp
//
//  Created by rana omar zaheri on 21/05/1444 AH.
//

import SwiftUI

struct Picker: View {
    @State var ingredients: [Ingredient] = [Ingredient(name: "pasta"),
                                            Ingredient(name: "Salad"),
                                            Ingredient(name: "soup"),
                                            Ingredient(name: "rice")
                                            ]
    var body: some View {
        
        
        DisclosureGroup{
            VStack{
                Divider()
                ForEach(0..<ingredients.count){ index in
                    HStack {
                        Button(action: {
                            ingredients[index].isSelected = ingredients[index].isSelected ? false : true
                        }) {
                            HStack{
                                if ingredients[index].isSelected {
                                    Image(systemName: "checkmark.square.fill")
                                    
                                        .foregroundColor(.black)
                                        .animation(.easeIn)
                                } else {
                                    
                                    Image(systemName: "square")
                                        .foregroundColor(.primary)
                                        .animation(.easeOut)
                                }
                                VStack{
                                    
                                    Spacer()
                                    HStack{
                                        Text(ingredients[index].name)
                                            .foregroundColor(.black)
                                            .font(.custom("SF Pro DisplaySF Pro Display", size: 19))
                                        
                                        Spacer()
                                    }
                                    Divider()
                                }
                                
                            }
                        }.buttonStyle(BorderlessButtonStyle())
                    }
                }
                
            }
            
        } label: {
            
                
                VStack{
                    
                    
                    
                    
                    Text("Your dishes ")
                    
                    
                        .font(.custom("SF Pro DisplaySF Pro Display", size: 22))
                        .foregroundColor(.black)
                }
            
                }.padding()
                
            .accentColor(.black)
            }
        }
    

struct Ingredient{
        var id = UUID()
        var name: String
        var isSelected: Bool = false
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        Picker()
    }
}
