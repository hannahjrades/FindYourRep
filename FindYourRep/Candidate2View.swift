//
//  Candidate 2.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//
import SwiftUI

struct Candidate2View: View {
    var body: some View {

        VStack(alignment: .center, spacing: 10.0) {
            Image("murielBowser")
            Text("Muriel Bowser")
                .fontWeight(.medium)
            Text("Party: Democrat")
                .fontWeight(.medium)
            
            Text("Muriel Bowser believes in having a strong public education system, affordable housing and gun violence prevention. She also has a lot of experience and has been DC’s mayor since 2015, and was a member of the DC council. Muriel Bowser also supports a woman’s right to choose, and LGBTQ+ rights.")
    
                
        }
 
        .padding()
    }
}

struct Candidate2View_Previews: PreviewProvider {
    static var previews: some View {
        Candidate2View()
    }
}
