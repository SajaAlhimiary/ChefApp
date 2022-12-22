//
//  Card.swift
//  ChefApp
//
//  Created by Haneen Behery on 25/05/1444 AH.
//

import SwiftUI

struct Card: View {
    var Title = String()
    var Cusin = String()
    var Fpic = String()
    var Spic = String()

    var body: some View {
        VStack{
            ZStack{
              
                // card and image size
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(SwiftUI.Color.gray, lineWidth: 0.5).shadow(color: Color.black.opacity(0.7),
                                                                             
               radius: 20,x:0,y:0)
                    
                
                    .frame(width: cardAndImageWidth, height: cardHeight)
                // .background(SwiftUI.Color.white).shadow(radius: 0).blur(radius: 0.2).cornerRadius(3)
                
                // swipe
                VStack(alignment: .leading, spacing: 10){
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            
                            NavigationLink(destination:chefprot().navigationBarBackButtonHidden(false)){
                                Image(Fpic)
                                    .resizable() .cornerRadius(10)
                                
                                  .frame(width: cardAndImageWidth, height: imageHeight)
                                
                                    .clipped()
                                
                                
                            }
                            Image(Spic)
                                .resizable() .cornerRadius(10)
                            
                               .frame(width: cardAndImageWidth, height: imageHeight)
                            
                                .clipped()
                                .cornerRadius(20)
                        }
                    }
                    VStack(alignment: .leading, spacing: 2){
                        HStack{
                            Text(Title).bold()
                            Spacer()
                            Image("stars")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125, height: 25)
                           // rating()
                        }.padding(.trailing)
                        Spacer()
                            Text(Cusin)
                                .font(.custom("SF Compact", size: 16))
                                .fontWeight(.heavy)
                    }.padding(.vertical,10)
                        .padding(.leading)
                        .padding(.bottom,12)
                    
                }
              //  .frame(width: cardAndImageWidth, height: cardHeight)
                .cornerRadius(cornerRadius)
            }
            
            Spacer()
            
        }
    }
    let cardAndImageWidth: CGFloat = 370
    
    let cardHeight: CGFloat = 288
    
    let imageHeight: CGFloat = 220
    
    let cornerRadius: CGFloat = 10
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
