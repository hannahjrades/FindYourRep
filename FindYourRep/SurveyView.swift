//
//  Survey.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct SurveyView: View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                
                NavigationLink(destination: ResultsView()) {
                    Text("Submit")
                } // for results link
                
            } // for vStack
            
        } // for navigation stack
        
    } // for some view
    
} // for struct view

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
