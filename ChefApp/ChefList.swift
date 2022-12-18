//
//  ChefList.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 18/12/2022.
//

import SwiftUI
import CloudKit

struct ChefList: View {
    @State var chefList : [Chef] = []
    var body: some View {
        NavigationView{
                    List{
                        ForEach(chefList) { chef  in
                            HStack(spacing: 2){
                                Image("avatar\(Int.random(in: 1..<7))")
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

//                                    Text("Bio: \(chef.bio)")
                                    Text("Rating: \(chef.rating)")

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

//Model
struct Chef: Identifiable {
    
    let id: CKRecord.ID
    let firstName : String
    let lastName : String
//    let reviews : [String]
    let rating : Double
//    let cuisine : [String]
//    let photos : [String]
//    let bio : String
//    let messages : [String]
   
    init(record:CKRecord) {
        self.id = record.recordID
        self.firstName = record["firstName"]  as? String ?? "N/A"
        self.lastName = record["lastName"] as? String ?? "N/A"
        self.rating = record["rating"] as? Double ?? 0
//        self.bio = record["bio"] as? String ?? "N/A"
//        self.cuisine = record["cuisine"] as? [String]?? "N/A"
        
    }
    
}

//
//let names: [String] = ["Nada Al Qahtani",
//                       "Dalal Al Harbi",
//                       "Shaden Al Otaibi",
//                       "Sara Al Shehri",
//                       "Reema Ahmed",
//                       "Areej Al Rashid",
//                       "Sara Mohammed"]
//
//let majors: [String] = ["Computer Science",
//                        "Physics",
//                        "Computer Science",
//                        "Chemistry",
//                        "Biology",
//                        "Computer Science",
//                        "Artificial Intelligence"
//]
