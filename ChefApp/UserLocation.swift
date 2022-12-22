//
//  UserLocation.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 21/12/2022.
//
import SwiftUI
import MapKit

struct UserLocation: View {

@StateObject private var mapAPI = MapAPI()
@State public  var textLocation = ""


var body: some View {
    

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

struct UserLocation_Previews: PreviewProvider {
static var previews: some View {
UserLocation()
}
}
