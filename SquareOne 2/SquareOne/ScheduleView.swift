//
//  ScheduleView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/11/21.
//

import SwiftUI

struct ScheduleView: View {
        init() {
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white,
                .font : UIFont(name: "Georgia-Bold", size: 36)!]
            UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!,
                .foregroundColor: UIColor.red]

            }

        @State var name:String = "Schedule"
        
        
        var body: some View {
            NavigationView {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                   
                    Color(red: 16/255, green: 20/255, blue: 26/255)
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView {
                        VStack (alignment: .leading, spacing: 5, content: {
                            
                            Text("A Day")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .colorScheme(.dark)
                            ScheduleCard(room: "Room B207", subject: "AP Physics", teacher: "Mr. Hennessey")
                            ScheduleCard(room: "Room C245", subject: "AP Art History", teacher: "Mr. Howard")
                            ScheduleCard(room: "Room B102", subject: "AP Calculus", teacher: "Ms. Reichard")
                            ScheduleCard(room: "Room B103", subject: "AP Statistics", teacher: "Mr. Hugh")
                            Text("B Day")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .colorScheme(.dark)
                                .padding(.top)
                            ScheduleCard(room: "Room B207", subject: "AP Physics", teacher: "Mr. Hennessey")
                            ScheduleCard(room: "Room C245", subject: "AP Art History", teacher: "Mr. Howard")
                            ScheduleCard(room: "Room B102", subject: "AP Calculus", teacher: "Ms. Reichard")
                            ScheduleCard(room: "Room B103", subject: "AP Statistics", teacher: "Mr. Hugh")
                                
                                
                                
                            })
                            .padding()
                        .padding(.leading, 8.0)
                    }
                    
                    
                    
                })
                
                .navigationBarTitle(Text(name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/), displayMode: NavigationBarItem.TitleDisplayMode.large)
                .navigationBarHidden(true)
                
            }
        }

    }


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}


struct ScheduleCard: View {
    
    var room: String
    var subject: String
    var teacher: String
    
    var body: some View {
        VStack{
               HStack {
                   VStack(alignment: .leading) {
                       Text(teacher.uppercased())
                           .font(.headline)
                           .foregroundColor(.secondary)
                           .colorScheme(.dark)
                       Text(subject)
                           .font(.title)
                           .fontWeight(.black)
                           .foregroundColor(.primary)
                           .lineLimit(3)
                           .colorScheme(.dark)
                       Text(room.uppercased())
                           .font(.caption)
                           .foregroundColor(.secondary)
                           .colorScheme(.dark)
                   }
                   .layoutPriority(100)
                   Spacer()
               }
               .padding()

           }
           .background(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1))
           .cornerRadius(8)
                   .overlay(
                       RoundedRectangle(cornerRadius: 10)
                           .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                   )
                   .padding([.top, .horizontal])

    }
}

