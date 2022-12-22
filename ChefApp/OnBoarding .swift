//
//  OnBoarding.swift
//  ChefApp
//
//  Created by Afnan on 17/05/1444 AH.
//

import Foundation
import SwiftUI

struct x: View {
    private let dotAppearance = UIPageControl.appearance()
    @State var isPresent = false
    var body: some View {
        NavigationView{
        ZStack{
            TabView{
                ZStack {
                    onBoardingView(values: .init(BGimage: 1,title: "Get a Chef",description: "Book a private chef for your special occasions", skip: "")).padding(.top, -20)
                    VStack{
                        // PrimaryButton(title: "Get Started"
                        //     .padding(EdgeInsets(top: 550, leading: 0, bottom: 0, trailing:0 ))
                        Button {
                            print(" ")
                            isPresent = true
                        } label: {
                            Text("Get Started")
                            
                            NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                        }
                        .frame(width: 285, height: 48)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color("Button"))
                        .cornerRadius(10)
                        .padding(.top, 600)
                    }
                }
                ZStack {
                    onBoardingView(values: .init(BGimage: 3,title: "Enjoy your Occasion",description: "The private chef will responsible for all kitchen operations", skip: "")).padding(.top, -20)
                    VStack{
                        //PrimaryButton(title: "Get Started")
                        //  .padding(EdgeInsets(top: 550, leading: 0, bottom: 0, trailing:0 ))
                        Button {
                            print(" ")
                            isPresent = true
                        } label: {
                            Text("Get Started")
                            
                            NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                        }
                        .frame(width: 285, height: 48)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color("Button"))
                        .cornerRadius(10)
                        .padding(.top, 600)
                    }
                }
                ZStack {
                    onBoardingView(values: .init(BGimage: 6,title: "Elevate the Food",description: "Show off food plating and serving", skip: "")).padding(.top, -20)
                    VStack{
                        // PrimaryButton(title: "Get Started")
                        // .padding(EdgeInsets(top: 550, leading: 0, bottom: 0, trailing:0 ))
                        Button {
                            print(" ")
                            isPresent = true
                        } label: {
                            Text("Get Started")
                            
                            NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                        }
                        .frame(width: 285, height: 48)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color("Button"))
                        .cornerRadius(10)
                        .padding(.top, 600)
                    }
                }
            }.tabViewStyle(.page(indexDisplayMode: .always))
            //.indexViewStyle(.page(backgroundDisplayMode: .always))
            //  .edgesIgnoringSafeArea(.all)
            // for the dots appearance
                .tabViewStyle(PageTabViewStyle())
                .onAppear {
                    dotAppearance.currentPageIndicatorTintColor = .red
                    //color.Color("ButtonColor")
                    dotAppearance.pageIndicatorTintColor = .gray
                    //dotAppearance.direction
                }.navigationBarBackButtonHidden(true)
            //.ignoresSafeArea(.all)
            
            // .padding()
            
        }.ignoresSafeArea(.all)
        
    }

    }
}
                        
struct x_Previews: PreviewProvider {
    static var previews: some View {
        x()
    }
}
