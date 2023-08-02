//
//  Results.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ResultsView: View {
        
    var body: some View {
            
        NavigationStack {
            
            VStack{
                    
                NavigationLink(destination: Candidate1View()) {
                    Text("View candidate 1")
                } // for candidate 1 link
                
                NavigationLink(destination: Candidate2View()) {
                    Text("View candidate 2")
                } // for candidate 2 link
                
                NavigationLink(destination: Candidate3View()) {
                    Text("View candidate 3")
                } // for candidate 3 link
                    
            } // for vStack
                
        } // for navigation stack
            
    } // for some view
        
} // for struct view

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
