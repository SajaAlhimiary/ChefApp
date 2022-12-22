//
//  SignIn.swift
//  ChefApp
//
//  Created by Afnan on 26/05/1444 AH.
//

import SwiftUI
import AuthenticationServices
struct SignIn: View {
    @State var isPresenting = false
    @State var isPresent = false
    @State private var email: String = "" // by default it's empty
    var body: some View {
        NavigationView{
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)
            VStack {
                VStack (alignment: .leading){
                    BigTitle(title: "Sign Up")
                        .padding(EdgeInsets(top: 10, leading: -150, bottom: 0, trailing:0 ))
                }
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "BGRemover"))
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing:0 ))
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
                        Text("Create Account")
                        
                        NavigationLink(destination: Booking().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                    }   .padding()
                        .frame(width: 285, height: 48)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color("Button"))
                        .cornerRadius(10)
                    // .padding(.top, 600.0)
                    //  Spacer()
                    
                    //                    PrimaryButton(title: "Create Account")
                    //                        .padding([.top], 35)
                }
                
                
                dividor(text: "Or")
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing:0 ))
                
                
                VStack{
                    Test2()
                    //                SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "appleLogo")), text: Text("Continue with Apple"))
                    //                        .padding([.top], 35)
                    //   .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing:0 ))
                } .padding([.bottom], 35)
                
                
                HStack{
                    Text("Already have an account?")
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                    NavigationLink(
                        destination: LogIn().navigationBarHidden(true),
                        label: {
                            Text("Sign in")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                            
                        })
                    .navigationBarHidden(true)
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

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
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

/*
 Button("Confirm Order") {
     isPresenting = true
 }
 .padding()
 .frame(width: 285, height: 48)
 .font(.title)
 .foregroundColor(.white)
 .background(Color("Button"))
 .cornerRadius(10)
 .padding(.top, 600.0)
 Spacer()
 */
