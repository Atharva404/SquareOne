//
//  HomeView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/10/21.
//

import SwiftUI

struct HomeView: View {
    init() {
                let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white,
            .font : UIFont(name: "Georgia-Bold", size: 36)!]

            UITextView.appearance().backgroundColor = .clear
        }

    @State var name:String = "Teddy Williams"
    
    
    var body: some View {
        NavigationView {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
               
                Color(red: 16/255, green: 20/255, blue: 26/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .leading, spacing: 5, content: {
                    Text("Independence High School | Senior")
                        .colorScheme(.dark)
                        .padding(.leading, 20.0)
                    VStack(alignment: .leading, spacing: 5, content: {
                        
                            VStack{
                                Image("Pasta")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Lunch Menu | Today's Special")
                                            .font(.headline)
                                            .foregroundColor(.secondary)
                                            .colorScheme(.dark)
                                        Text("Alfredo Pasta with Bacon")
                                            .font(.title)
                                            .fontWeight(.black)
                                            .foregroundColor(.primary)
                                            .lineLimit(3)
                                            .colorScheme(.dark)
                                        Text("$3.49 per plate".uppercased())
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
                        NavigationLink(
                            destination: ScheduleView(),
                            label: {
                                VStack{
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Schedule | Current Class")
                                                .font(.headline)
                                                .foregroundColor(.secondary)
                                                .colorScheme(.dark)
                                            Text("AP Chemistry")
                                                .font(.title)
                                                .fontWeight(.black)
                                                .foregroundColor(.primary)
                                                .lineLimit(3)
                                                .colorScheme(.dark)
                                            Text("Room B207 | Ms. Aguayo".uppercased())
                                                .font(.caption)
                                                .foregroundColor(.secondary)
                                                .colorScheme(.dark)
                                        }
                                        .layoutPriority(100)
                                        Spacer()
                                    }
                                    .padding()
                                }
                            })
                        
                        
                        .background(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1))
                        .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                                )
                                .padding([.top, .horizontal])

                            
                        
                        Spacer()
                        
                        
                    })
                    .padding()
                    .padding(.leading, 8.0)
                })
                
                
            })
            
            .navigationBarTitle(Text(name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/))
        }
    }

    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
