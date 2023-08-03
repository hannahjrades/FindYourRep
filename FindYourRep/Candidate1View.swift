//
//  Candidate 1.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//
import SwiftUI

struct Candidate1View: View {
    var body: some View {
        ZStack{
            CustomColor.red2
                .ignoresSafeArea()
            
            VStack {
                
                Image("staciaHall")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(200)
                    .shadow(radius : 15)
                Text("Stacia Hall")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .padding()
                VStack{
                    
                    Text("Party: Republican")
                        .font(.title2)
                    Text("Age: 53")
                        .font(.title2)
                    Text("Current Position: Entrepreneur")
                        .font(.title2)
                }
                
                Text("Hall believes that the DC community should have a strong relationship with the police force. Her campaign pushes to improve new infrastructure, such as repairing the Metro and DC’s roads. Hall has been quoted as saying democrats are 'wicked'.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
            }
            
            .padding()
            .background(Rectangle()
            .foregroundColor(Color("red1")))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
        }

    }
}

struct Candidate1View_Previews: PreviewProvider {
    static var previews: some View {
        Candidate1View()
    }
}

