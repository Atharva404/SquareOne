//
//  MeetingsViewModel.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/11/21.
//

import Foundation

import FirebaseFirestore

class MeetingsViewModel: ObservableObject {
    
    @Published var meetings = [Meeting]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("meetings").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.meetings = documents.map { (queryDocumentSnapshot) -> Meeting in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                let time = data["time"] as? String ?? ""
                let email = data["email"] as? Bool ?? false
                let meeting = Meeting(name: name, description:description, time: time,email: email)
                return meeting
                
            }
        }
    }
}
