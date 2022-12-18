//
//  Orders.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 08/12/2022.
//

import SwiftUI

struct Orders: View {
    var body: some View {
        NavigationView{
            ZStack(alignment: .top){
                Color("Chefbackground").ignoresSafeArea()

                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing:2){
                        Text("Chef Name")
                        Text("Date")
                        Text("Price")
                    }
                    .padding()
                    Spacer()
                    VStack(spacing:2){
                        Text("Order ID")
                        Button("Pay", action: {})
                            .frame(width: 80, height: 20)
                            .background(Color("chefRed"))
                            .foregroundColor(Color(.white))
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                    }
                    .padding()
                }
                .frame(width: 350, height: 100)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 1)
            }
            .navigationTitle("Orders")
//            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
