//
//  rating.swift
//  ChefApp
//
//  Created by rana omar zaheri on 17/05/1444 AH.
//


import SwiftUI
 
struct rating: View {
    
    @State var selected = -1
    @State var message = false
    
    var body: some View {
        
        
        
        HStack {
            RatingView(selected: $selected, message: $message)
        }
        
        
        .environment(\.colorScheme, .light)
    }
    
    
    struct rating_Previews: PreviewProvider {
        static var previews: some View {
            rating()
        }
    }
    
    struct RatingView : View {
        
        @Binding var selected : Int
        @Binding var message : Bool
        
        var body: some View {
            ForEach(0..<5) { rating in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(self.selected >= rating ? .yellow : .gray)
                    .onTapGesture {
                        self.selected = rating
                        self.message.toggle()
                    }
            }
            
        }
        
    }
}
