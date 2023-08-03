//
//  Survey.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//

import SwiftUI
struct SurveyView: View {
    @State var bowserCount = 0
    @State var grantCount = 0
    @State var hallCount = 0
    
    @State var issue1result = Bool()
    @State var issue2result = Bool()
    @State var issue3result = Bool()
    @State var issue4result = Bool()
    @State var issue5result = Bool()
    @State var issue6result = Bool()
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                Text("Choose which issues are important to you!")
                Toggle(isOn: $issue1result) {
                    Text("Increased police funding")
                }
                .padding()
                Toggle(isOn: $issue2result) {
                    Text("Mental Health")
                }
                .padding()
                Toggle(isOn: $issue3result) {
                    Text("Youth Programs")
                }
                .padding()
                Toggle(isOn: $issue4result) {
                    Text("Reproductive Rights")
                }
                .padding()
                Toggle(isOn: $issue5result) {
                    Text("Gun Control")
                }
                .padding()
                Toggle(isOn: $issue6result) {
                    Text("Tax Cuts")
                }
                .padding()
                Button("Calculate") {
                    if issue1result == true {
                        bowserCount += 1
                        hallCount += 2
                    }
                    if issue2result == true { bowserCount += 1
                        grantCount += 1
                    }
                    if issue3result == true { grantCount += 2
                    }
                    if issue4result == true { bowserCount += 1
                    }
                    if issue5result == true { bowserCount += 2
                        grantCount += 1
                    }
                    if issue6result == true {
                        hallCount += 1
                    }
                }//for calculate button
                .buttonStyle(.borderedProminent)
                if bowserCount > grantCount && (hallCount != 0){
                    NavigationLink(destination: ResultsView()) {
                        Text("Submit")
                    } // for results link
                    .buttonStyle(.borderedProminent)
                }
                
                
            } // for vStack
            
        } // for navigation stack
        
    } // for some view
    
} // for struct view

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
