//
//  Model.swift
//  ChefApp
//
//  Created by Afnan on 26/05/1444 AH.
//

import SwiftUI

struct Model: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Model_Previews: PreviewProvider {
    static var previews: some View {
        Model()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        ZStack{
            Text(title)
                .fontWeight(.regular)
                .font(.system(size: 24))
                .foregroundColor(.white)
                .frame(width: 348, height: 67)
                .background(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct textFiled: View {
    @State private var email: String = ""
    var content: String
    var body: some View {
        VStack(){
            TextField(content, text: $email)
                .frame(width: 270, height: 49) .cornerRadius(10)
               // .cornerRadius(10)
                .fontWeight(.regular)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .padding(.leading)
                .multilineTextAlignment(.leading)
        }
        .background(Color("TextFiledBG"))
        .cornerRadius(10)
    }
}
struct BigTitle: View {
    var title: String
    var body: some View {
        VStack{
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
    }
}

struct SocalLoginButton: View {
    var image: Image
    var text: Text
    var body: some View {
        VStack{
        HStack {
            image
                .resizable()
                .frame(width: 28, height: 28)
                .padding(.horizontal, 3)

            //Spacer()
            text
                .fontWeight(.regular)
                .font(.system(size: 24))
                .foregroundColor(.white)
              
           // Spacer()
        } .frame(width: 285, height: 49)

            
        //.padding()
        //.frame(maxWidth: .infinity)
        //.foregroundColor(.white)
        .background(Color("black"))
        .cornerRadius(10)
        //.shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
        }//.frame(width: 285, height: 49)
    }
}

//Divider
struct dividor: View{
    var text: String
    var body: some View {
        HStack(spacing: 15) {
            Rectangle()
                .fill(Color("black"))
                .frame(width: 142, height: 1)
            
            Text(text)
            
            Rectangle()
                .fill(Color("black"))
                .frame(width: 142, height: 1)
            
        }
    }
}

struct Marker: View{
    var text: String
    var body: some View {
        HStack(spacing: 15) {
            Rectangle()
                .fill(Color("AccentColor"))
                .frame(width: 96, height: 1)
                
            
            Text(text)
            
            Rectangle()
                .fill(Color("AccentColor"))
                .frame(width: 96, height: 1)
            
        }
    }
}

struct cards: View{
    var image: Image
    var mnue: String
    var dish: String
    var body: some View{
       // HStack{
            VStack {
                //Image(uiImage: #imageLiteral(resourceName: "m1.1"))
                    image
                    .resizable()
                    .resizable()
                    .frame(width: 150, height: 150)
                HStack{
                    Text(dish)
                }
            }//VStack
            .frame(maxWidth: 150, minHeight: 150)
            // .padding(30)
            .background(.white)
            .cornerRadius(20)
            // ??
            .padding(.trailing)
            // padding(.botto, 10)
            
//            VStack {
//                image
//                .resizable()
//                    .frame(width: 150, height: 150)
//                HStack{
//                    Text(dish)
//                }
//            } //VStack
//            .frame(maxWidth: 150, minHeight: 150)
//            // .padding(30)
//            .background(.white)
//            .cornerRadius(20)
      //  }
        
    }
    }
/*
 //.padding(.leading)
 //.font(Font.system(size: 15, weight: .medium, design: .s))
 
     //.foregroundColor(.primary)
// .overlay(RoundedRectangle(cornerRadius: 10) .frame(height: 49))

 /*
  .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0.5).frame(height: 45))
  */
 //.cornerRadius(10)
     //.preferredColorScheme(.light)
 // Text(content)
//   Text($email)
//   "\(values.BGimage)"
 /* TextField(content, text: $email)
      .font(.title3)
      .padding()
      .frame(maxWidth: .infinity)
      .background(Color.white)
      .cornerRadius(50.0)
      .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
      .padding(.vertical)
  */
  //
  //
  //25
 
 /*
 VStack(spacing: 25){
     TextField("Username", text: $username)
         .padding(10)
         .font(Font.system(size: 15, weight: .medium, design: .serif))
         .foregroundColor(.primary)
         .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0.5).frame(height: 45))
         .preferredColorScheme(.dark)
     .multilineTextAlignment(.center)}
 */
 
 //        Text(title)
 //            .font(.title3)
 //            .fontWeight(.bold)
 //            .foregroundColor(.white)
 //            .frame(width: 285, height: 49)
 //            //.frame(maxWidth: .infinity)
 //            .padding()
 //            .background(Color("ButtonColor"))
 //            .cornerRadius(10)
 */

