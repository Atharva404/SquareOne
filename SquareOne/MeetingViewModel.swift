//
//  MeetingViewModel.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/11/21.
//

import Foundation
import Firebase
import FirebaseFirestore


class MeetingViewModel: ObservableObject{
    
    @Published var meeting: Meeting = Meeting(name: "", description: "", time: "", email: false)

    private var db = Firestore.firestore()
  
      func addMonkey(meeting: Meeting) {
        do {
            let _ = try db.collection("meetings").addDocument(from: meeting)
        }
        catch {
          print(error)
        }
      }
    
    func save(){
        addMonkey(meeting: meeting)
    }
}
