//
//  LoginView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/10/21.
//

import SwiftUI

struct LoginView: View {
    
    init() {
                let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white,
            .font : UIFont(name: "Georgia-Bold", size: 40)!]

              }

    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 16/255, green: 20/255, blue: 26/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        Image("Icon")
                            .resizable()
                            .frame(width: 125.0, height: 125.0)
                        Text("SquareOne").foregroundColor(.white)
                            .font(.system(size: 40, weight: .bold, design: .serif))

                    }
                    .padding(.bottom, 100)
                    .padding(/*@START_MENU_TOKEN@*/.top, 50.0/*@END_MENU_TOKEN@*/)
                        
                        
                  TextField("", text: self.$email)
                    .placeholder(when: self.email.isEmpty) {
                        Text("Email").foregroundColor(.gray)
                    }
                    .foregroundColor(.white)
                    .padding()                    .cornerRadius(8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 100/255, blue: 120/255, opacity: 100/255)))
                  SecureField("", text: self.$password)
                    .placeholder(when: self.password.isEmpty) {
                        Text("Password").foregroundColor(.gray)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 100/255, blue: 120/255, opacity: 100/255)))
                    .cornerRadius(8)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("      Login       ")
                        })
                        .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold, design: .serif))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 90/255, blue: 130/255)))
                        .padding(.top, 5)
                    
                    Spacer()

                }.padding([.leading, .trailing], 27.5)

                                    
                
            
                .navigationBarTitle(Text("Login").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/))
                .navigationBarHidden(true)
                

            }
                
            
            
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
