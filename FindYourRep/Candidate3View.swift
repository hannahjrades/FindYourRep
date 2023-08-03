//
//  Candidate 3.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//
import SwiftUI

struct Candidate3View: View {
    var body: some View {

        VStack {
            Image("rodney")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all, 20)
            Text("Rodney 'Red' Grant")
                .font(.title)
                .fontWeight(.heavy)
            Text("Party: Independent")
                .font(.title2)
            Text("Age: ")
                .font(.title2)
            Text("Current Position: Comedian, Producer and Actor")
                .font(.title2)
            Text("Grant has a local non-profit for young filmmakers and is an advocate for funding arts and humanities programs. He also funds mental health services. He is passionate about violence prevention and the disparities between DC wards. ")
                .font(.title3)
            
        
                
        } // for vStack
 
        
    } // for view
    
} // for struct

struct Candidate3View_Previews: PreviewProvider {
    static var previews: some View {
        Candidate3View()
    }
}

