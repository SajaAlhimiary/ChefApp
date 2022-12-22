////
////  Profile.swift
////  ChefApp
////
////  Created by Afnan on 27/05/1444 AH.
////

import SwiftUI

struct Profile: View {
    
    var body: some View {
        NavigationView {
            
            ZStack{
                Color("BgColor").edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack{
                        VStack (alignment: .center) {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .foregroundColor(.gray)
                                .frame(width: 130.0, height: 130.0)
                            
                            VStack{
                                Text("Noor Ali")
                                    .font(.title)
                                    
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                            }
                        }.padding(.top, 40)
                        VStack (alignment: .leading){
                            NavigationLink(destination:  Splash()) {
                                    VStack{
                                        HStack{
                                            VStack(alignment: .leading, spacing: 0.0){
                                                Image(systemName: "creditcard")
                                                    .resizable()
                                                    .frame(width: 33, height: 33)
                                            }
                                            VStack{
                                                Text("Add New Card")
                                                    .padding(.leading,20)
                                                    .font(.custom("SF Compact", size: 20))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.medium)
                                            }
                                            VStack{
                                                Image(systemName: "chevron.forward")
                                                    .resizable()
                                                    .frame(width: 10, height: 20)
                                            }.padding(.leading, 120)
                                        }
                                        
                                    }
                               
                                .frame(width: 370, height: 100)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.top, 20)
                                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                                
                            }
                        }
                        VStack (alignment: .leading){
                            NavigationLink(destination:  Splash()) {
                                
                                ZStack{
                                VStack {
                                    
                                    VStack{
                                        HStack{
                                            VStack(alignment: .leading, spacing: 0.0){
                                                Image(systemName: "gear")
                                                    .resizable()
                                                    .frame(width: 33, height: 33)
                                            }
                                            VStack{
                                                Text("Settings")
                                                    .padding(.leading,20)
                                                    .font(.custom("SF Compact", size: 20))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.medium)
                                            }
                                            VStack{
                                                Image(systemName: "chevron.forward")
                                                    .resizable()
                                                    .frame(width: 10, height: 20)
                                            }.padding(.leading, 160)
                                        }
                                        
                                    }
                                }
                                .frame(width: 370, height: 100)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                                .padding()
                            }
                            }
                        }
                        
                        
                        
                        //
                        VStack (alignment: .leading){
                            NavigationLink(destination:  Splash()) {
                                    VStack{
                                        HStack{
                                            VStack(alignment: .leading, spacing: 0.0){
                                                Image(systemName: "doc.badge.gearshape")
                                                    .resizable()
                                                    .frame(width: 33, height: 33)
                                            }
                                            VStack{
                                                Text("Terms and Conditions")
                                                    .padding(.leading,20)
                                                    .font(.custom("SF Compact", size: 20))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.medium)
                                            }
                                            VStack{
                                                Image(systemName: "chevron.forward")
                                                    .resizable()
                                                    .frame(width: 10, height: 20)
                                            }.padding(.leading, 50)
                                        }
                                        
                                    }
                               
                                    .frame(width: 370, height: 100)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                                
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}



