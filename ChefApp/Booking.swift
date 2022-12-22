//
//  Booking.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 21/12/2022.
//

import SwiftUI
import MapKit

struct Booking: View {
    
    @State private var isExpanded = false
    @State var isPresenting = false
    @State var GuestNumber = ""
    @State var currentTime = Date()
    @State var currentTimeString : String = ""
    @State private var isPressed  = false
    @State var isPresent = false
    
    @State private var didTap:Bool = false
    @State private var didTap2:Bool = false
    
    @StateObject private var mapAPI = MapAPI()
    @State public  var textLocation = ""
    
    @State var selected = 0
    
    @State var selectedMenu = ""
    
    
    let boxes:[Box] = [
        Box(id: 0, title:"Mexican Menu"),
        Box(id: 1, title:"American Menu"),
        Box(id: 2, title:"Customized Menu")
        
    ]
    
    
    let data = (1...100).map { "Item \($0)" }
    
    let columns = [
        GridItem(.adaptive(minimum: 140 , maximum: 300))
    ]
    
    
    
    var closedRange = Calendar.current.date(byAdding: .year, value: -1, to: Date())!
    
    
    var body: some View {
        
        
        NavigationView{
            ZStack(alignment: .top){
                Color("Background")
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 20){
                    
                    
                    // Location Dropdown
                    DisclosureGroup{
                        VStack{
                            locationView
                        }.frame(width: 300, height: 300)
                            
                    } label: {
                        VStack{
                            HStack{
                                
                                Image(systemName: "location")
                                Text("Location")
                                
                                
                            }
                            Text(textLocation)
                                .font(.body)
                                .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                            
                            
                        }
                    }
                    
                    //                    Rectangle()
                    //                    // .frame(width: 350.0)
                    //                        .foregroundColor(Color(red: 0.885, green: 0.89, blue: 0.886))
                    //                        .frame(height: 1.0)
                    
                    
                    
                    //Divider
                    
                    
                    
                    
                    
                    // Calendar Dropdown
                    DisclosureGroup{
                        VStack (alignment: .center){
                            
                            VStack (alignment: .center){
                                
                                DatePicker("", selection: $currentTime)
                                    .accentColor(.red)
                                    .onTapGesture {
                                        
                                        currentTimeString =  currentTime.toString()
                                        
                                        
                                    }
                                
                            }.padding(.trailing, 50)
                                .padding(.top)
                            
                        }
                    } label: {
                        VStack{
                            HStack{
                                Image(systemName: "calendar")
                                
                                
                                Text("Event date & time")
                                
                            }
                            Text(currentTimeString)
                                .font(.body)
                                .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                            
                      
                        }
                    }
                    
                    
                    //                    Rectangle()
                    //                    // .frame(width: 350.0)
                    //                        .foregroundColor(Color(red: 0.885, green: 0.89, blue: 0.886))
                    //                        .frame(height: 1.0, alignment: .bottom)
                    //
                    
                    
                    // Menu Dropdown
                    
                    DisclosureGroup{
                        // VStack{
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            
                            
                            ForEach (boxes, id: \.id) {
                                box in
                                
                                VStack {
                                    BoxView(box: box, selectedBtn: self.$selected, selectedTitle: $selectedMenu  )
                                    
                           
                                }
                            }
                        }
                        
                        
                        
                    } label: {
                        VStack(alignment: .leading){
                            HStack{
                                Image(systemName: "fork.knife")
                                Text("Menu")
                                
                            }
                            
                            Text(selectedMenu)
                                .font(.body)
                                .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                            
                    
                            
                        }
                    }
                 
                
                    
                    
                    // Gustes Dropdown
                    DisclosureGroup{
                        VStack{
                            TextField("Type Guest number", text: $GuestNumber)
                            
                                .padding(8)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 2))
                                .frame(height: 50)
                            
                            
                            
                            
                        }.padding()
                        
                        
                    } label: {
                        
                        VStack{
                            
                            HStack{
                                Image(systemName: "person.fill")
                                Text("Gustes")
                                
                                
                            }
                            Text(GuestNumber)
                                .font(.body)
                                .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                        }
                    }
                    
                    
                    
                    
                }.accentColor(.black)
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.bottom, 20.0)
                    .padding(.horizontal, 20.0)
                    .padding(.top, 20.0)
                    .background(Color.white)
                
                
                
                    .cornerRadius(10)
                    .padding(.leading,20)
                    .padding(.trailing ,20)
                    .padding(.top, 25)
                    .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
                
                
//                Button("Confirm Order") {
//                    isPresenting = true
//                }
//                .padding()
//                .frame(width: 285, height: 48)
//                .font(.title)
//                .foregroundColor(.white)
//                .background(Color("Button"))
//                .cornerRadius(10)
//                .padding(.top, 600.0)
//                Spacer()
                
                Button {
                    print(" ")
                    isPresent = true
                } label: {
                    Text("Confirm Order")
                    
                    NavigationLink(destination: Checkout().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                }                  .padding()
                    .frame(width: 285, height: 48)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color("Button"))
                    .cornerRadius(10)
                    .padding(.top, 600.0)
                    Spacer()
                
            }.navigationTitle("Booking details")
                .navigationBarTitleDisplayMode(.inline)
                .font(.title)
            
            
            
            
        }
        
    }
    var locationView: some View {
        
        VStack {
            TextField("Enter an address", text: $textLocation)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Find address") {
                mapAPI.getLocation(address: textLocation, delta: 0.5)
            }
            
            Map(coordinateRegion: $mapAPI.region, annotationItems: mapAPI.locations) { location in
                MapMarker(coordinate: location.coordinate, tint: .blue)
            }
            .ignoresSafeArea()
        }
        
        
        
    }
}

struct Booking_Previews: PreviewProvider {
    static var previews: some View {
        Booking()
    }
}


extension Date {
    
    func toString(format: String = "yyyy-MM-dd HH:mm") -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}



// List Struct  for buttons selection

struct Box: Identifiable {
    
    var id: Int
    var title: String
}

struct BoxView: View {
    
    
    var box: Box
    @Binding var selectedBtn : Int
    
    @Binding var selectedTitle : String
    
    
    var body: some View{
        Button(action: {
            
            
            self.selectedBtn = self.box.id
            self.selectedTitle = self.box.title
        })
        
        {
            Text(box.title)
                .font(.body)
                .foregroundColor(.white)
            
        }
        .frame(width: 150 ,height: 40 )
        .background(self.selectedBtn == self.box.id ? (Color("Button")): (Color("Button2")))
        .cornerRadius(6)
        
    }
}

//Divider
struct Dividor: View{

    var body: some View {
        VStack{
            Rectangle()
                .fill(Color("Button2"))
                .frame(width: 330, height: 1)
            
        }
    }
}



