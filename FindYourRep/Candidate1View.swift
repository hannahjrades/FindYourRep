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
            
            VStack(alignment: .center, spacing: 10.0) {
                Image("staciaHall")
                Text("Stacia Hall")
                    .fontWeight(.medium)
                Text("Party: Republican")
                    .fontWeight(.medium)
                
                Text("Stacia Hall believes that the DC community should have a strong relationship with the police force. One of the key points of her campaign is improving new infrastructure, such as repairing the Metro and DC’s roads. Hall has been quoted as saying democrats are 'wicked'.")
                
                
                
            }
            
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
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

