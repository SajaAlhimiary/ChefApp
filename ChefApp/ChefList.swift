//
//  ChefList.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 18/12/2022.
//

import SwiftUI
import CloudKit

struct ChefList: View {
    @State var chefList: [Chef] = []
    @State var cuisines: [String] = []
    
    var body: some View {
        NavigationView{
            List{
                ForEach(chefList) { chef  in
                    HStack(spacing: 2){
                        Image("\(chef.picture)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                            .padding(.vertical)
                            .padding(.horizontal, 2)
                        
                        VStack(alignment: .leading, spacing:6){
                            Text("Chef. \(chef.firstName) \(chef.lastName)")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
//                            Text("Bio: \(chef.bio)")
                            Text("Rating: \(String(format: "%.1f", (chef.rating)))")
                            HStack {
                                Text("Cuisines: ")
                                ForEach(chef.cuisine, id: \.self) { cuisineName in
                                    Text(cuisineName)
                                }
                                
                                
//                                ForEach(cuisines, id: \.self) { item in
//                                    Text(item.capitalized)
//                                        .padding()
//                                }
                                
//                                ForEach(chefList) { list in
//                                    ForEach(list.cuisine, id: \.self) { cuisineName in
//                                        Text(cuisineName)
//                                    }
//
//                                }
                            }
                        }
                    }
                    .padding(6)
                }
            }
        }
        .listStyle(.plain)
        .onAppear{
            fetchChef()
        }
        .navigationTitle("Chef")
    }
    
    
    //View Model
    func fetchChef(){
        
        let container = CKContainer(identifier: "iCloud.Chef")
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Chef", predicate: predicate)
        
        let operations = CKQueryOperation(query: query)
        operations.recordMatchedBlock = {  recordId, result in
            
            switch result {
            case .success( let records):
                print(records)
                let chef = Chef(record: records)
                self.chefList.append(chef)
            case .failure( let error):
                print(error.localizedDescription)
            }
            
        }
        
        container.publicCloudDatabase.add(operations)
    }
    
    
}
struct ChefList_Previews: PreviewProvider {
    static var previews: some View {
        ChefList()
    }
}
