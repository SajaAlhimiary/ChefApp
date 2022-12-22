//
//  ChefModel.swift
//  ChefApp
//
//  Created by Saja Alhimiary on 19/12/2022.
//

import Foundation
import CloudKit

//Chef Model
struct Chef: Identifiable {
    
    let id: CKRecord.ID
    let firstName : String
    let lastName : String
    //    let reviews : [String]
    let rating : Double
    let cuisine : [String]
    let picture : String
    let bio : String
    //    let messages : [String]
    
    init(record:CKRecord) {
        self.id = record.recordID
        self.firstName = record["firstName"]  as? String ?? "N/A"
        self.lastName = record["lastName"] as? String ?? "N/A"
        self.rating = record["rating"] as? Double ?? 0
        self.bio = record["bio"] as? String ?? "N/A"
        self.cuisine = record["cuisine"] as? [String] ?? []
        self.picture = record["picture"]  as? String ?? "N/A"
    }
    
}
