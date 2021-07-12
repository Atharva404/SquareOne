//
//  PlannerView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/9/21.
//

import SwiftUI

struct PlannerView: View {
    init() {
                let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white,
            .font : UIFont(name: "Georgia-Bold", size: 40)!]

    }
    
    
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 16/255, green: 20/255, blue: 26/255)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    
                    VStack(alignment: .trailing, spacing: 15, content: {
                            PlannerCard(title: "Tablet view", description: "Show audio in a note and playback UI",alert: false)
                        Spacer()
                    }).padding(.top)
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                NavigationLink(
                    destination: AddPlannerView(),
                    isActive: $isLinkActive,
                    label: {
                        Button(action: {
                            self.isLinkActive = true
                        }, label: {
                            Text("+")
                                .font(.largeTitle)
                                .frame(width: 66, height: 60)
                                .foregroundColor(Color(red: 16/255, green: 20/255, blue: 26/255))
                                .padding(.bottom, 7)
                        })
                        .background(Color(red: 255/255, green: 90/255, blue: 96/255))
                        .cornerRadius(38.5)
                        .padding()
                        .shadow(color: Color.black.opacity(0.3),
                                radius: 3,
                                x: 3,
                                y: 3)

                    })
                                    
                
            
                .navigationBarTitle(Text("Tasks").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/))

            }
                }
            }
            
        }
    }
    
}

struct PlannerView_Previews: PreviewProvider {
    static var previews: some View {
        PlannerView()
    }
}

struct PlannerCard: View {
    
    var title: String
    var description: String
    var alert: Bool
    
    var body: some View {
        HStack(alignment: .center) {
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.bottom, 5)
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

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}
