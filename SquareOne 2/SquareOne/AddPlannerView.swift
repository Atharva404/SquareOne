//
//  AddPlannerView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/9/21.
//

import SwiftUI

struct AddPlannerView: View {
    init() {
                let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white,
            .font : UIFont(name: "Georgia-Bold", size: 40)!]

            UITextView.appearance().backgroundColor = .clear
        }

    @State var value = ""
    @State private var date = Date()
    @State private var alert = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 16/255, green: 20/255, blue: 26/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    TextField("", text: $value)
                        .placeholder(when: value.isEmpty) {
                            Text("Name").foregroundColor(.gray)
                    }
                        .foregroundColor(.white)
                        .font(Font.system(size: 18))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 100/255, blue: 120/255, opacity: 100/255)))
                        .padding(.top)
                    TextField("", text: $value)
                        .placeholder(when: value.isEmpty) {
                            Text("Description").foregroundColor(.gray)
                    }
                        .foregroundColor(.white)
                        .font(Font.system(size: 18))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 100/255, blue: 120/255, opacity: 100/255)))
                        .padding(.top, 5)
                            
                    Toggle(isOn: $alert, label: {
                        Text("Alert")
                    })
                    .foregroundColor(.white)
                    .font(Font.system(size: 18))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 100/255, blue: 120/255, opacity: 100/255)))
                    .padding(.top, 5)

                    DatePicker("Due Date", selection: $date)
                                    .datePickerStyle(CompactDatePickerStyle())
                        .foregroundColor(.white)
                        .font(Font.system(size: 18))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 100/255, blue: 120/255, opacity: 100/255)))
                        .padding(.top, 5)

                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("      Create       ")
                        })
                        .foregroundColor(.white)
                    .font(.system(size: 24, weight: .regular, design: .serif))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 90/255, blue: 130/255)))
                        .padding(.top, 5)
                    
                }
                .padding(.all)
                
                .navigationBarTitle(Text("Add Task").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/))

            }
                
            }
            
        }
    

}

struct AddPlannerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlannerView()
    }
}


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
