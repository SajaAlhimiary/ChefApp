//
//  ChatPage.swift
//  ChefApp
//
//  Created by Haneen Behery on 20/05/1444 AH.
//

import SwiftUI

struct ChatPage: View {
    
    struct CustomColor{
        static let ChefGray = Color("ChefGray")
        static let ChefRed = Color("ChefRed")
    }
    @State private var messageText = ""
    @State var messages: [String] = ["Hello how are you?"]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Chef Ahmed")
                
                    .bold()
                
                //  Image(systemName: "bubble.left.fill")
                //  .font(.system(size: 26))
                // .foregroundColor(Color.blue)
                
            }
            
            //   Divider()
            
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    // If the message contains [USER], that means it's us
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        // User message styles
                        HStack {
                            Spacer()
                            
                            Text(newMessage)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(CustomColor.ChefGray)
                                .clipShape(BubbleShapeSend())
                            Image("userPIC").resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(60)
                            
                         
                        }.padding()
                    } else {
                        
                        // Bot message styles
                        VStack{
                            HStack {
                                Image("chefAhmed")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(60)
                                Text(message)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.black)
                                    .clipShape(BubbleShape())

                                

                                
                                  ///  .clipped(BubbleShape())

                                  //  .cornerRadius(10)
                                   // .padding(.horizontal, 16)
                                  //  .padding(.bottom, 10)
                                Spacer()
                            }.padding()
                        }//.padding(.horizontal,15)
                    }
                    
                }.rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            .background(Color.gray.opacity(0.1))
            
            
            // Contains the Message bar
            HStack {
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill").foregroundColor(CustomColor.ChefRed)
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
                
                TextField("Type something", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                
              
            }
            .padding()
        }
    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    messages.append(getBotResponse(message: message))
                }
            }
        }
    }
    
}

struct BubbleShape: Shape{
    func path( in rect: CGRect) -> Path{
        let Width = rect.width
        let height = rect.height
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 20, y: height))
        path.addLine(to: CGPoint(x: Width-15, y: height))
        path.addCurve(to: CGPoint(x: Width, y: height-15), controlPoint1: CGPoint(x: Width-8, y: height), controlPoint2: CGPoint(x: Width, y: height-8))
        
        path.addLine(to: CGPoint(x: Width, y: 15))
        path.addCurve(to: CGPoint(x: Width-15, y: 0), controlPoint1: CGPoint(x: Width, y: 8), controlPoint2: CGPoint(x: Width-8, y: 0))
        
        path.addLine(to: CGPoint(x: 20, y: 0))
        path.addCurve(to: CGPoint(x: 5, y: 15), controlPoint1: CGPoint(x: 12, y: 0), controlPoint2: CGPoint(x: 5, y: 8))
        
        path.addLine(to: CGPoint(x: 5, y: height-10))
        path.addCurve(to: CGPoint(x: 20, y: height), controlPoint1: CGPoint(x: 10, y: height ), controlPoint2: CGPoint(x: 20, y: height))
      //  path.addCurve(to: CGPoint(x: 0, y: height), controlPoint1: CGPoint(x: 5, y: height-1 ), controlPoint2: CGPoint(x: 0, y: height))
        
        //till
      //  path.addLine(to: CGPoint(x: -1, y: height))
       // path.addCurve(to: CGPoint(x:12, y: height-4), controlPoint1: CGPoint(x: 4, y: height+1 ), controlPoint2: CGPoint(x: 8, y: height-1))
     //   path.addCurve(to: CGPoint(x: 20, y: height), controlPoint1: CGPoint(x: 15, y: height ), controlPoint2: CGPoint(x: 20, y: height))
        
        
        return Path(path.cgPath)
    }
}

struct BubbleShapeSend: Shape{
    func path( in rect: CGRect) -> Path{
        let Width = rect.width
        let height = rect.height
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 20, y: height))
        path.addLine(to: CGPoint(x: Width-15, y: height))
        
        path.move(to: CGPoint(x: 20, y: height))
        path.addLine(to: CGPoint(x: Width-15, y: height))
        path.addCurve(to: CGPoint(x: Width, y: height-15), controlPoint1: CGPoint(x: Width-8, y: height), controlPoint2: CGPoint(x: Width, y: height-8))
        
        path.addLine(to: CGPoint(x: Width, y: 15))
        path.addCurve(to: CGPoint(x: Width-15, y: 0), controlPoint1: CGPoint(x: Width, y: 8), controlPoint2: CGPoint(x: Width-8, y: 0))
        
        path.addLine(to: CGPoint(x: 20, y: 0))
        path.addCurve(to: CGPoint(x: 5, y: 15), controlPoint1: CGPoint(x: 12, y: 0), controlPoint2: CGPoint(x: 5, y: 8))
        
        path.addLine(to: CGPoint(x: 5, y: height-10))
        path.addCurve(to: CGPoint(x: 20, y: height), controlPoint1: CGPoint(x: 10, y: height ), controlPoint2: CGPoint(x: 20, y: height))
       
        
        
        return Path(path.cgPath)
    }
}


struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
