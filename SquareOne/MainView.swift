//
//  MainView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/11/21.
//

import SwiftUI

struct MainView: View {
    @State var selection: Int = 0
    
    var body: some View {
            
            // Your native TabView here
            TabView(selection: $selection) {
                HomeView()
                    .tag(0)
                
                MeetingView()
                    .tag(1)
                
                PlannerView()
                    .tag(2)
                
                ProfileView()
                    .tag(3)
            }
            .overlay(
                Color(red: 36/255, green: 38/255, blue: 50/255)
                    .edgesIgnoringSafeArea(.vertical)
                    .frame(height: 50)
                    .overlay(HStack {
                        Spacer()

                        Button(action: {
                            self.selection = 0
                        }, label: {
                            Image(systemName: "house.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color.white)
                                .opacity(selection == 0 ? 1 : 0.4)
                        })
                        Spacer()
                        Button(action: {
                            self.selection = 1
                        }, label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color.white)
                                .opacity(selection == 1 ? 1 : 0.4)
                        })
                        Spacer()

                        
                        Button(action: {
                            self.selection = 2
                        }, label: {
                            Image(systemName: "plus.square.on.square.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color.white)
                                .opacity(selection == 2 ? 1 : 0.4)
                        })
                        Spacer()

                        
                        Button(action: {
                            self.selection = 3
                        }, label: {
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color.white)
                                .opacity(selection == 3 ? 1 : 0.4)
                        })
                        Spacer()
                        
                    })
            ,alignment: .bottom) // Align the overlay to bottom to ensure tab bar stays pinned.
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
