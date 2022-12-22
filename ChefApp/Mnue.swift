//
//  Mnue.swift
//  ChefApp
//
//  Created by Afnan on 26/05/1444 AH.
//

import SwiftUI

struct Mnue: View {
    var body: some View {
        NavigationView {
            ZStack{
                //
                Color("Background").edgesIgnoringSafeArea(.all)
            ScrollView{
                
                VStack{
                    VStack{
                        Marker(text: "Appetizers")
                            .padding()
                        HStack{
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m1.1")), mnue: "h", dish: "salad")
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m1.2")), mnue: "h", dish: "Cheese Platter")
                            
                        }
                        HStack{
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m1.3")), mnue: "h", dish: "Muffins")
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m1.4")), mnue: "h", dish: "Sourdough")
                        }
                    }
                    .padding()
                    
                    
                    VStack{
                        Marker(text: "Main Dishes")
                            .padding()
                        HStack{
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m2.1")), mnue: "h", dish: "Omelette")
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m2.2")), mnue: "h", dish: "Avocado Toasts")
                            
                        }
                        HStack{
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m2.3")), mnue: "h", dish: "Tortilla wrap")
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m2.4")), mnue: "h", dish: "Granola")
                        }
                    }
                    .padding()
                    
                    VStack{
                        Marker(text: "Sweets")
                            .padding()
                        HStack{
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m3.1")), mnue: "h", dish: "Pancakes")
                            cards(image: Image(uiImage: #imageLiteral(resourceName: "m3.2")), mnue: "h", dish: "Waffels")
                            
                        }
                    }
                    
                    
                }
                .navigationTitle("Menu")
                .navigationBarTitleDisplayMode(.inline)
            }
            
        }
        }
        
    }
    
}

struct Mnue_Previews: PreviewProvider {
    static var previews: some View {
        Mnue()
    }
}
