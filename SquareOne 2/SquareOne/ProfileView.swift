//
//  ProfileView.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/11/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color(red: 16/255, green: 20/255, blue: 26/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack(){
        
                MapView().frame(height: 400).offset(y: -220).padding(.bottom, -220)
                CircleImage().offset(y: -130).padding(.bottom, -130)
                
            
           VStack(alignment: .leading){
                Text("Teddy Williams")
                    .font(.title)
                    .colorScheme(.dark)
            
             HStack() {
                    Text("Independence HS")
                    .font(.subheadline)
                    .colorScheme(.dark)
                    Spacer()
                    Text("Senior")
                    .colorScheme(.dark)
                }
         
            }.padding()
                
                
            SocialMediaListView()
                
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("    Sign Out     ")
                        })
                        .foregroundColor(.white)
                    .font(.system(size: 24, weight: .regular, design: .serif))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color(red: 96/255, green: 90/255, blue: 130/255)))
                        

                }
                .padding(.top, 15)
        }.edgesIgnoringSafeArea(.top)
           
        
        }
}

}

import MapKit

struct MapView: UIViewRepresentable {
  
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        uiView.mapType = MKMapType.standard
        let mylocation = CLLocationCoordinate2D(latitude: 33.1644889, longitude: -96.7521014)
        let coordinate = CLLocationCoordinate2D(
                    latitude: 33.1644578, longitude: -96.7521314)

        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = mylocation
        annotation.title = "My School"
        annotation.subtitle = "Independence HS"
        uiView.addAnnotation(annotation)

      }
    
    
    
        
}


struct CircleImage: View {
    var body: some View {
          Image("ProfilePic")
            .resizable()
            .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                     .clipShape(Circle())
                     .overlay(Circle().stroke(Color.white, lineWidth: 2))
                     .shadow(radius: 10)
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .colorScheme(.dark)
    }
}

import SafariServices

struct Account: Identifiable {
    var id: Int
    
    let image, name, username, url: String
}

struct SocialMediaListView: View {
    let accounts: [Account] = [
           .init(id: 0, image: "Canvas", name: "Canvas", username: "teddy williams", url: "https://github.com/vatsalkul"),
           .init(id: 1, image: "Gmail", name: "Gmail", username: "teddywill636", url: "https://www.linkedin.com/in/vatsal-kulshreshtha-4251375a"),
       ]
    var body: some View {
            
        VStack {
            ForEach(accounts) { acc in
                        
                    VStack{
                           HStack {
                            Image(acc.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            Spacer()
                               VStack(alignment: .trailing) {
                                   Text(acc.username.uppercased())
                                       .font(.headline)
                                       .foregroundColor(.secondary)
                                       .colorScheme(.dark)
                                   Text(acc.name)
                                       .font(.title)
                                       .fontWeight(.black)
                                       .foregroundColor(.primary)
                                       .lineLimit(3)
                                       .colorScheme(.dark)
                               }
                               .layoutPriority(100)
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
        
    }
}
