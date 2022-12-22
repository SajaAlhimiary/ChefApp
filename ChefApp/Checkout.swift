//
//  Checkout.swift
//  ChefApp
//
//  Created by Afnan on 27/05/1444 AH.
//

//import SwiftUI
//
//struct Checkout: View {
//    var body: some View {
//
//        //NavigationView{
//            ZStack{
//            Color("BgColor").edgesIgnoringSafeArea(.all)
//            VStack{
//                ZStack{
//                    VStack(alignment: .leading){
//                           VStack{
//                               Text("Receipt")
//                                   .fontWeight(.medium)
//                                   .font(.system(size: 20))
//                           }
//                            HStack{
//                                Text("Menu for 5 person")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 16))
//                                    .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                    .padding(.top, -10)
//                                Text("2.300 SAR")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 15))
//                                   .padding(.top, -10)
//                            }
//                            HStack{
//                                Text("Subtotal")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 16))
//                                    .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                    .padding(.top, 10)
//                                Text("2.800 SAR")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 15))
//                                    .padding(.top, 10)
//                            }
//                            HStack{
//                                Text("Total")
//                                    .fontWeight(.medium)
//                                    .font(.system(size: 18))
//                                    .padding(.top, 10)
//                                Text("3.100 SAR")
//                                    .fontWeight(.bold)
//                                    .font(.system(size: 15))
//                                    .padding(.top, 10)
//                            }
//                            Text("Pay Time in: 20/11/2022")
//                                .fontWeight(.regular)
//                                .font(.system(size: 14))
//                                .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                .multilineTextAlignment(.center)
//                                .padding(.top, 10)
//
//                            VStack (alignment: .center){
//                                Text("Cancel up to 7 days ahead to receive a full refund. Canel at least 48 hours prior to the event to receive a 50% refund")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 14))
//                                    .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                    .multilineTextAlignment(.center)
//                            }.padding(.top, 10)
//
//                    }
//                }
//                .frame(width: 370, height: 300)
//                .background(Color.white)
//                .cornerRadius(10)
//                .padding(10)
//                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//                .padding(.top, 20)
//
//
//             //   VStack {
//                ZStack {
//
//                 //   VStack{
//                    VStack{
//
//                        Text("Payment method")
//                            .fontWeight(.medium)
//                            .font(.system(size: 20))
//                            .multilineTextAlignment(.leading)
//                            .padding(.trailing, 200)
//
//
//                    HStack{
//                        Image(systemName: "creditcard")
//                            .resizable()
//                            .frame(width: 30, height: 30)
//                        Text("Credit Card")
//                            .fontWeight(.regular)
//                            .font(.system(size: 16))
//                            .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                        Image(systemName: "chevron.forward")
//                            .resizable()
//                            .frame(width: 27, height: 30)
//                    }
//
//
//
//                }
//                       // }
//                    }
//                    .frame(width: 370, height: 120)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .padding(10)
//                    .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//
//
//                    //        HStack{
//                    //
//                    //        }
//                    //        .frame(width: 370, height: 220)
//                    //        .background(Color.white)
//                    //        .cornerRadius(10)
//                    //        .padding(10)
//                    //        .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//              //  }
//                VStack{
//                    ZStack{
//                        HStack{
//                            VStack(alignment: .leading){
//                                Text("Booking policies")
//                                    .fontWeight(.medium)
//                                    .font(.system(size: 20))
//
//                                HStack{
//                                    Image(systemName: "doc.text")
//                                        .resizable()
//                                        .frame(width: 30, height: 30)
//                                    Text("Terms and conditions")
//                                        .fontWeight(.regular)
//                                        .font(.system(size: 16))
//                                        .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                    Image(systemName: "chevron.forward")
//                                        .resizable()
//                                        .frame(width: 27, height: 30)
//
//                                }
//
//
//
//                            }
//                        }
//                    }
//                    .frame(width: 370, height: 120)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .padding(10)
//                    .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//
//
//                    ZStack{
//                        VStack{
//                            HStack{
//                                Text("Mexican Menu")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 16))
//                                    .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                Text("Total")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 15))
//                            }
//                            HStack{
//                                Text("5 person")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 16))
//                                    .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
//                                Text("3.100 SAR")
//                                    .fontWeight(.regular)
//                                    .font(.system(size: 15))
//                            }
//                            VStack{
//                                PrimaryButton(title: "Create Account")
//                            }
//                        }
//                    }
//                    .frame(width: 370, height: 120)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .padding(10)
//                    .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//                    .padding(.top, 20)
//
//                    //        HStack{
//                    //
//                    //        }
//                    //        .frame(width: 370, height: 220)
//                    //        .background(Color.white)
//                    //        .cornerRadius(10)
//                    //        .padding(10)
//                    //        .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//                }
//                //        HStack{
//                //
//                //        }
//                //        .frame(width: 370, height: 220)
//                //        .background(Color.white)
//                //        .cornerRadius(10)
//                //        .padding(10)
//                //        .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
//            }
//
//
//        }
//
//       // .navigationTitle("checkout")
//        //.navigationBarTitleDisplayMode(.inline)
//    //}
//}
//}
//struct Checkout_Previews: PreviewProvider {
//static var previews: some View {
//Checkout()
//}
//}
