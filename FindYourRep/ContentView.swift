//
//  ContentView.swift
//  FindYourRep
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
            
            NavigationStack{
                
                VStack{
                    
                    Text("FindYourRep")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                    Text("Empower Your Vote:")
                        .font(.title)
                    
                    Text("Find Your Representative and Influence Change!")
                        .font(.title2)
                    
                    Text("How to use FindYourRep:")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Text("1. Select your region and election")
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Text("2. Fill out the survey")
                        .padding()
                        .multilineTextAlignment(.leading)
                    
                    Text("3. View your potential candidates!")
                        .multilineTextAlignment(.leading)
                        .padding()

                    
                    VStack{
                        Menu{
                            Button(action: { }, label: {
                                Text("District of Columbia (DC)")
                            })
                            Button(action: { }, label: {
                                Text("More to come")
                            })
                        } label: {
                            Label(
                                title: {Text("Select Your Region")},
                                icon: {Image(systemName: "plus")}
                            )
                        } // for labels
                        } // for drop dow vStack
                    
                    
                    
                    NavigationLink(destination: SurveyView()) {
                        Text("Begin")
                    } // for survey link
                    .buttonStyle(.borderedProminent)
                    
                } // for vStack
                
            } // for navigation stack
            .padding()
            
        } // for some view
    
} // for struct view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
