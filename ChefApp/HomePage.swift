////
////  HomePage.swift
////  ChefApp
////
////  Created by Haneen Behery on 19/05/1444 AH.
////
//
//import SwiftUI
//import CloudKit
//
//struct HomePage: View {
//
//    struct CustomColor{
//        static let ChefGray = Color("ChefGray")
//        static let ChefRed = Color("ChefRed")
//    }
//
//    @State var showingDetail = false
//    @State  var searchText = ""
//    @State var ChefName = ["Chef Ahmed": "Indin", "Chef Sara":"Mexican", "chef Alla":"Medil East"]
//
//        // @State var ChefName : [Card] = [ Card(Title :"Chef Sara", Cusin: "Indin, Arabin", Fpic: ("ChefSara2"), Spic:("ChefSara1")), Card(Title :"Chef Ahmed", Cusin: "Indin", Fpic: ("chef"), Spic: ("chef2"))]
//
//
//
//    //  init(){
//    //  UITableView.appearance().backgroundColor = .white
//    //  }
//    var body: some View {
//
//            NavigationView{
//
//                List{
//
//                    Button(action: {
//                        self.showingDetail.toggle()
//                    }) {
//                        HStack{
//                            Spacer()
//                            //                            padding(.trailing)
//                            Image(systemName:"slider.horizontal.3").foregroundColor(CustomColor.ChefRed).font(.system(size: 30))
//                                .frame(width: 10,height: 0)
//                        }
//                    }.sheet(isPresented: $showingDetail) {
////                        DetailView()
//                    }
//
//
//                    VStack{
//
//                            Card(Title :"Chef Sara", Cusin: "Indin, Arabin", Fpic: ("ChefSara2"), Spic:("ChefSara1"))
//
//
//                        Card(Title :"Chef Ahmed", Cusin: "Indin", Fpic: ("chef"), Spic: ("chef2"))
//                        Card(Title :"Chef Ahmed", Cusin: "Indin", Fpic: ("chef"), Spic: ("chef2"))
//
//
//                    }.navigationTitle("Chef")
//                        .navigationBarTitleDisplayMode(.inline)
//
//
//
//                }
//
//
//
//            }.scrollContentBackground(.hidden).searchable(text: $searchText)
//        }
//
//
//
//
//
//
//
//    //search
//    var searchResults: [String:String] {
//        if searchText.isEmpty {
//            return ChefName
//        } else {
//
//            return ChefName .filter { $0.key.contains (searchText) }
//
//
//        }
//
//
//    }
//
//    }
//
//
//struct HomePage_Previews: PreviewProvider {
//    static var previews: some View {
//        HomePage()
//    }
//}
//
//  HomePage.swift
//  ChefApp
//
//  Created by Haneen Behery on 19/05/1444 AH.
//

import SwiftUI
import CloudKit

struct HomePage: View {
    
    struct CustomColor{
        static let ChefGray = Color("ChefGray")
        static let ChefRed = Color("ChefRed")
    }

    @State var showingDetail = false
    @State  var searchText = ""
    @State var ChefName = ["Chef Ahmed": "Indin", "Chef Sara":"Mexican", "chef Alla":"Medil East"]
    
        // @State var ChefName : [Card] = [ Card(Title :"Chef Sara", Cusin: "Indin, Arabin", Fpic: ("ChefSara2"), Spic:("ChefSara1")), Card(Title :"Chef Ahmed", Cusin: "Indin", Fpic: ("chef"), Spic: ("chef2"))]
    
 
    
    //  init(){
    //  UITableView.appearance().backgroundColor = .white
    //  }
    var body: some View {
        ZStack{
            
            Color("Background")
                .ignoresSafeArea()
            NavigationView{
                
                List{
                    
                    Button(action: {
                        self.showingDetail.toggle()
                    }) {
                        HStack{
                            Spacer()
                            //                            padding(.trailing)
                            Image(systemName:"slider.horizontal.3").foregroundColor(CustomColor.ChefRed).font(.system(size: 30))
                                .frame(width: 10,height: 0)
                        }
                    }.sheet(isPresented: $showingDetail) {
                        //                        DetailView()
                    }
                    
                    
                    VStack{
                        
                        Card(Title :"Chef Sara", Cusin: "Indian, Arabin", Fpic: ("ChefSara2"), Spic:("ChefSara1"))
                        
                        
                        Card(Title :"Chef Ahmed", Cusin: "Indian", Fpic: ("chef"), Spic: ("chef2"))
                        Card(Title :"Chef Ahmed", Cusin: "Indian", Fpic: ("chef"), Spic: ("chef2"))
                        
                        
                    }.navigationTitle("Chef")
                        .navigationBarTitleDisplayMode(.inline)
                    
                    
                    
                }
                
                
                
            }.scrollContentBackground(.hidden).searchable(text: $searchText)
        }
        
        
        
    }
        
        
        
        //search
        var searchResults: [String:String] {
            if searchText.isEmpty {
                return ChefName
            } else {
                
                return ChefName .filter { $0.key.contains (searchText) }
                
                
            }
            
            
        }
    }
    


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
