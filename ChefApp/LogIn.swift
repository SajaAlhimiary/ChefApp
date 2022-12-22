//
//  LogIn.swift
//  ChefApp
//
//  Created by Afnan on 25/05/1444 AH.
//

import SwiftUI

struct LogIn: View {
    @State var isPresent = false
    @State private var email: String = "" // by default it's empty
    var body: some View {
        NavigationView{
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)
            VStack {
                VStack (alignment: .leading){
                    BigTitle(title: "Sign in")
                .padding(EdgeInsets(top: 30, leading: -150, bottom: 0, trailing:0 ))
                }
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "BGRemover"))
                        .resizable()
                        .frame(width: 400, height: 400)
                       .padding(EdgeInsets(top: -60, leading: 0, bottom: 0, trailing:0 ))
                }
                VStack{
                    textFiled(content: "Phone Number")
                    .padding(EdgeInsets(top: -60, leading: 0, bottom: 0, trailing:0 ))
                }
                VStack{
                    Button {
                        print(" ")
                        isPresent = true
                    } label: {
                        Text("Sign in")
                        
                        NavigationLink(destination: Booking().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                    }   .padding()
                        .frame(width: 285, height: 48)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color("Button"))
                        .cornerRadius(10)
//                    PrimaryButton(title: "Log In")
//                     .padding([.top], 35)
                    
//                    SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "appleLogo")), text: Text("Continue with Apple"))
//                                           .padding([.top], 35)
                     .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing:0 ))
                }
         //  .padding([.bottom], 35)

                dividor(text: "Or")
               .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing:0 ))

                VStack{
                    Test2()
                }.padding(.bottom, 50)


                    

                HStack{
                Text("Don’t have an account?")
                .foregroundColor(.gray)
                .font(.system(size: 20))
                NavigationLink(
                    destination: SignIn()) {
                        //.navigationBarHidden(true),
                  //  label: {
                        Text("Sign Up")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .fontWeight(.regular)
    
                }
               // .navigationBarHidden(false)
            }
               // Text("Read our Terms & Conditions.")
                  //  .foregroundColor(Color("PrimaryColor"))
                //Spacer()
                
            }
            .padding()
        }
        }
    }
}
struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}


/*
 
 /* SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign in with Google").foregroundColor(Color("PrimaryColor")))
  .padding(.vertical)*/
 
 //  Text("or get a link emailed to you")
 // .foregroundColor(Color.black.opacity(0.4))
 
 //   textFiled(content: "Work email address", text: $email)
 /* .font(.title3)
  .padding()
  .frame(maxWidth: .infinity)
  .background(Color.white)
  .cornerRadius(50.0)
  .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
  .padding(.vertical)
  */
 //  textFiled("Work email address", text: $email)


 
 // }
 struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}*/


