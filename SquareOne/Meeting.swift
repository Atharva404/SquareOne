//
//  User.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/11/21.
//

import Foundation

import FirebaseFirestoreSwift

struct Meeting: Identifiable, Hashable, Codable {
    @DocumentID var id: String?
    var name: String
    var description: String
    var time: String
    var email: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description = "description"
        case time = "time"
        case email = "email"
        
      }

    
}
