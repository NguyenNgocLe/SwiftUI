//
//  Home.swift
//  ComplexCurve
//
//  Created by Le on 11/9/20.
//

import SwiftUI

struct Home: View {
    
    var gradient1 = [Color("gradient2"), Color("gradient3"), Color("gradient4")]
    var gradient = [Color("gradient1"), Color("gradient2"), Color("gradient3"), Color("gradient4")]
    //@StateObject
    
    var body: some View {
        VStack {
            VStack {
                Text("EASTHER!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .padding()
                Spacer()
                Text("STATUS")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                Text("DISCONNECTED")
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .padding(.top, 5)
            }.frame(height: UIScreen.main.bounds.height / 3.3)
            // Button....
            Button(action: {
                
            }, label: {
                VStack(spacing: 15) {
                    Image(systemName: "power")
                        .font(.system(size: 70))
                        .foregroundColor(Color("power"))
                    
                    Text("START")
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                }
                .padding(50)
                .background(
                    LinearGradient(gradient: .init(colors: [Color("pgradient1"), Color("pgradient2")]), startPoint: .leading, endPoint: .trailing)
                ).clipShape(Circle())
                .padding()
                .background(Color("power1"))
                .clipShape(Circle())
            })
            //
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: .init(colors: gradient), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        )
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
