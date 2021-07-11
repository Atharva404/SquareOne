//
//  MeetingView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/10/21.
//

import SwiftUI

struct MeetingView: View {
    
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 16/255, green: 20/255, blue: 26/255)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    
                    VStack(alignment: .trailing, spacing: 15, content: {
                        MeetingCard(title: "Ms. Aguayo", description: "Show audio in a note and playback UI", time: "Today, 8:55 P.M", alert: true)
                        Spacer()
                    }).padding(.top)
                }
                VStack {
                    Spacer()
                    
                NavigationLink(
                    destination: AddMeetingView(),
                    isActive: $isLinkActive,
                    label: {
                        Button(action: {
                            isLinkActive = true
                        }, label: {
                                Text("      Create Meeting       ")
                            })
                            .foregroundColor(.white)
                        .font(.system(size: 24, weight: .regular, design: .serif))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 90/255, blue: 130/255)))
                            .padding(.bottom, 20)

                    })
                                    
                
            
                .navigationBarTitle(Text("Meetings").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/))

            }
                
            }
            
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}


struct MeetingCard: View {
    
    var title: String
    var description: String
    var time: String
    var alert: Bool
    
    var body: some View {
        HStack(alignment: .center) {
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(title)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.top, 30)
                        .padding(.leading, 30)
                        .padding(.bottom, 15)
                    Spacer()
                    Text(time)
                        .font(.system(size: 16, weight: .light, design: .default))
                        .foregroundColor(.white)
                        .padding(9)
                        .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                    
                }
                Text(description)
                    .font(.system(size: 16, weight: .light, design: .default))
                    .padding(.leading, 30)
                    .foregroundColor(.white)
                    .padding(.bottom, description != "" ? 30 : 0)
            }.padding(.trailing, 20)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        
        .background(alert ? Color(red: 217/255, green: 53/255, blue: 53/255): Color(red: 106/255, green: 109/255, blue: 205/255))
        
        .modifier(CardModifier())
        .padding(.horizontal, 20)
    }
}
