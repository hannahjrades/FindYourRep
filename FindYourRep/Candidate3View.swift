//
//  Candidate 3.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//
import SwiftUI

struct Candidate3View: View {
    var body: some View {

        VStack(alignment: .center, spacing: 10.0) {
            Image("rGrant")
            Text("Rodney 'Red' Grant")
                .fontWeight(.medium)
            Text("Party: Independent")
                .fontWeight(.medium)
            
            Text("Description: Rodney “Red” Grant is an Independent candidate for DC mayor, as well as being a comedian, producer and actor. On top of that, Grant has a local non-profit for young filmmakers and is an advocate for funding arts and humanities programs, as well as funding mental health services. He is also passionate about violence prevention and the disparities between DC wards. ")
            
        
                
        }
 
        .padding()
    }
}

struct Candidate3View_Previews: PreviewProvider {
    static var previews: some View {
        Candidate3View()
    }
}

