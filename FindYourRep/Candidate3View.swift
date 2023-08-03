//
//  Candidate 3.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//
import SwiftUI

struct Candidate3View: View {
    var body: some View {
        
        ZStack{
            background(CustomColor.lightGray)
            VStack {
                Text("")
                Text("")
                Image("rodney")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 40)
                Text("Rodney 'Red' Grant")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .padding()
                VStack{
                    
                    Text("Party: Independent")
                        .font(.title2)
                    Text("Age: 44")
                        .font(.title2)
                    Text("Current Position: Comedian")
                        .font(.title2)
                }
                Text("Grant has a local non-profit for young filmmakers and is an advocate for funding arts and humanities programs. He also funds mental health services. He is passionate about violence prevention and the disparities between DC wards. ")
                    .font(.title3)
                    .padding()
                
                
            } // for vStack
            .padding()
            .background(Rectangle()
                .foregroundColor(Color("lighterGray")))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding(20)
        } //for zStack
        
    } // for view
    
} // for struct

struct Candidate3View_Previews: PreviewProvider {
    static var previews: some View {
        Candidate3View()
    }
}

