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
                
                NavigationLink(destination: SurveyView()) {
                    Text("Begin")
                } // for survey link
    
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

