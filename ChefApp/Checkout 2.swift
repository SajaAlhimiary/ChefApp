//
//  Checkout.swift
//  ChefApp
//
//  Created by Afnan on 27/05/1444 AH.
//

import SwiftUI

struct Checkout: View {
    @State var isPresent = false
    var body: some View {
        
      NavigationView{
              ZStack{
                  Color("BgColor").edgesIgnoringSafeArea(.all)
                  VStack{
                      ZStack{
                          VStack(alignment: .leading){
                              VStack{
                                  Text("Receipt")
                                      .fontWeight(.medium)
                                      .font(.system(size: 20))
                                      .padding(.bottom,30)
                              }
                              HStack{
                                  VStack{
                                      Text("Menu for 5 person          ")
                                          .fontWeight(.regular)
                                          .font(.system(size: 16))
                                          .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                  }.padding(.top, -10)
                                  VStack{
                                      Text("2.300 SAR")
                                          .fontWeight(.regular)
                                          .font(.system(size: 15))
                                          .padding(.leading, 100.0)
                                  }.padding(.top, -10)
                              }
                              HStack{
                                  VStack{
                                      Text("Subtotal                           ")
                                          .fontWeight(.regular)
                                          .font(.system(size: 16))
                                          .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                          .padding(.top, 1)
                                  }
                                  VStack{
                                      Text("2.800 SAR")
                                          .fontWeight(.regular)
                                          .font(.system(size: 15))
                                          .padding(.leading, 100.0)
                                          .padding(.top, 1)
                                  }
                              }
                              HStack{
                                  Text("Total   ")
                                      .fontWeight(.medium)
                                      .font(.system(size: 18))
                                      .padding(.top, 1)
                                  Text("3.100 SAR")
                                      .fontWeight(.bold)
                                      .font(.system(size: 15))
                                      .padding(.leading, 221.0)
                                      .padding(.top, 1)
                              }
                              VStack{
                                  Text("Pay Time in: 20/11/2022")
                                      .fontWeight(.regular)
                                      .font(.system(size: 14))
                                      .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                      .multilineTextAlignment(.center)
                                      .padding(.top, 1)
                              }
                              VStack (alignment: .center){
                                  Text("Cancel up to 7 days ahead to receive a full refund. Canel at least 48 hours prior to the event to receive a 50% refund")
                                      .fontWeight(.regular)
                                      .font(.system(size: 14))
                                      .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                      .multilineTextAlignment(.center)
                              }.padding(.top, 1)
                              
                          }
                      }
                      .frame(width: 370, height: 300)
                      .background(Color.white)
                      .cornerRadius(10)
                      .padding(.top, 36.0)
                      .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                      //.padding(.top, 20)
                      
                      ZStack {
                          VStack{
                              Text("Payment method")
                                  .fontWeight(.medium)
                                  .font(.system(size: 20))
                                  .multilineTextAlignment(.leading)
                                  .padding(.trailing, 200)
                              HStack{
                                  VStack(alignment: .leading, spacing: 0.0){
                                      Image(systemName: "creditcard")
                                          .resizable()
                                          .frame(width: 30, height: 30)
                                  }
                                  Text("Credit Card")
                                      .frame(width: 105)
                                      .fontWeight(.regular)
                                      .font(.system(size: 16))
                                      .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                      .multilineTextAlignment(.leading)
                                      .padding(.trailing, 170.0)
                                  
                                  VStack{
                                      Image(systemName: "chevron.forward")
                                          .resizable()
                                          .frame(width: 20, height: 25)
                                          .padding(.bottom, 25.0)
                                  }
                              }
                          }
                      }
                      .frame(width: 370, height: 100)
                      .background(Color.white)
                      .cornerRadius(10)
                      .padding(10)
                      .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                      
                      //
                      ZStack {
                          VStack{
                              Text("Booking policies")
                                  .fontWeight(.medium)
                                  .font(.system(size: 20))
                                  .multilineTextAlignment(.leading)
                                  .padding(.trailing, 200)
                              HStack{
                                  VStack(alignment: .leading, spacing: 0.0){
                                      Image(systemName: "doc.text")
                                          .resizable()
                                          .frame(width: 30, height: 30)
                                  }
                                  VStack{
                                      Text("Conditions")
                                          .frame(width: 105)
                                          .fontWeight(.regular)
                                          .font(.system(size: 16))
                                          .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                          .multilineTextAlignment(.leading)
                                          .padding(.trailing, 170.0)
                                  }
                                  Image(systemName: "chevron.forward")
                                      .resizable()
                                      .frame(width: 20, height: 25)
                                      .padding(.bottom, 25.0)
                              }
                          }
                      }
                      .frame(width: 370, height: 100)
                      .background(Color.white)
                      .cornerRadius(10)
                      .padding(10)
                      .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                      
                      ZStack{
                          VStack{
                              HStack{
                                  VStack{
                                      Text("Mexican Menu")
                                          .fontWeight(.medium)
                                          .font(.system(size: 20))
                                          .padding(.trailing, 150.0)
                                  }
                                  
                                  Text("Total")
                                      .fontWeight(.regular)
                                      .font(.system(size: 18))
                              }
                              HStack{
                                  VStack{
                                      Text("5 person   ")
                                          .fontWeight(.regular)
                                          .font(.system(size: 16))
                                          .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                                          .padding(.trailing, 170.0)
                                      
                                  }
                                  Text("3.100 SAR")
                                      .fontWeight(.regular)
                                      .font(.system(size: 15))
                              }
                              VStack{
                                  //PrimaryButton(title: "Create Account")
                                  Button {
                                      print(" ")
                                      isPresent = true
                                  } label: {
                                      Text("Confirm Order")
                                      
                                      NavigationLink(destination: chefprot().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                                  }                  .padding()
                                      .frame(width: 285, height: 48)
                                      .font(.title)
                                      .foregroundColor(.white)
                                      .background(Color("Button"))
                                      .cornerRadius(10)
                              }
                          }
                      }
                      .frame(width: 370, height: 140)
                      .background(Color.white)
                      .cornerRadius(10)
                      .padding(10)
                      .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                      .padding(.top, 20)
                      .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                  }
              }
        }
.navigationTitle("checkout")
.navigationBarTitleDisplayMode(.inline)
}
}

struct Checkout_Previews: PreviewProvider {
static var previews: some View {
Checkout()
}
}

