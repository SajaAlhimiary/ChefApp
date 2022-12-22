//
//  Order.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 21/12/2022.
//
import SwiftUI

struct Order: View {
var body: some View {
ZStack{

        Color("Background")
            .ignoresSafeArea()
        
       
        
        VStack(alignment: .center){
            
            Text("Order")
                .font(.title)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
               
            HStack{
                VStack(alignment: .leading){
                    Text("Chef Ahmed")
                        .font(.title2)
                    
                    
                    Text("Pay before: 20/11/2022")
                        .font(.body)
                        .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                        .multilineTextAlignment(.leading)
                    

                    Text("500 SAR")
                        .fontWeight(.bold)
       

                }.padding(.trailing, 50)
  
                
                VStack{
                    Text("#K1021")
                    ZStack{
                        Capsule()
                            .foregroundColor(Color("Button"))
                            .frame(width: 103.0, height: 31.0)
                        Text("Pay")
                            .foregroundColor(.white)
                    }
                }
             
            }.frame(width: 370.0, height: 116.0)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
              
            
       // Second Order
            
            HStack{
                VStack(alignment: .leading){
                    Text("Chef Ahmed")
                        .font(.title2)
                    
                    
                    Text("Pay Time in: 20/11/2022")
                        .font(.body)
                        .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                        .multilineTextAlignment(.center)

                    Text("900 SAR")
                        .fontWeight(.bold)
       

                }.padding(.trailing, 50)
  
                
                VStack{
                    Text("#K1030")
                    ZStack{
                        Capsule()
                            .foregroundColor(Color("Button2"))
                            .frame(width: 103.0, height: 31.0)
                        Text("Paied")
                            .foregroundColor(Color("Button"))
                    }
                }
             
            }
            .frame(width: 370, height: 116.0)
                .background(Color.white)
                .cornerRadius(10)
                .padding(10)
                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)

            
        }.padding(.bottom, 320)
        

        
    }
}
}

struct Order_Previews: PreviewProvider {
static var previews: some View {
Order()
}
}
