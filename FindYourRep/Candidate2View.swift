//
//  Candidate 2.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//
import SwiftUI

struct Candidate2View: View {
    var body: some View {
        
        ZStack{
            CustomColor.blue2
                .ignoresSafeArea()
            VStack {
                Image("bowser")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(200)
                    .shadow(radius : 15)
                Text("Muriel Bowser")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                VStack{
                    
                    Text("Party: Democrat")
                        .font(.title2)
                    Text("Age: 51")
                        .font(.title2)
                    Text("Current Position: Mayor of DC")
                        .font(.title2)
                }
                
                Text("Bowser believes in having a strong public education system, affordable housing and gun violence prevention. She's been DC’s mayor since 2015, and was a member of the DC council.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            
            .padding()
            .background(Rectangle()
                .foregroundColor(Color("blue1")))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding(20)
        }
    }
}

struct Candidate2View_Previews: PreviewProvider {
    static var previews: some View {
        Candidate2View()
    }
}
