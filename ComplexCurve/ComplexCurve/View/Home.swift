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
            Text("EASTHER!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: .init(colors: gradient1), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        )
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
